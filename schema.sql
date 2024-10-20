-- Estrutura do banco de dados
DROP DATABASE IF EXISTS biblioteca;
CREATE DATABASE biblioteca CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE biblioteca;
--
--  Tabela de alunos
--
CREATE TABLE IF NOT EXISTS alunos (
    matricula SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    sobrenome VARCHAR(255) NOT NULL,
    turma CHAR(5) NOT NULL,
    livros_em_consulta TINYINT UNSIGNED DEFAULT 0,
    multado CHAR(3) NOT NULL DEFAULT 'Não',
    CONSTRAINT chk_livros_consulta CHECK (livros_em_consulta <= 3),
    CONSTRAINT chk_multado CHECK (multado = 'Sim' or multado = 'Não')
);
--
-- Tabela de livros
--
CREATE TABLE IF NOT EXISTS livros (
    id_livro SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    autor VARCHAR(255) NOT NULL,
    categoria VARCHAR(255) NOT NULL,
    isbn CHAR(13) NOT NULL,
    ano YEAR NOT NULL,
    exemplares_disponiveis TINYINT UNSIGNED NOT NULL DEFAULT 0,
    CONSTRAINT chk_livro_existe CHECK (exemplares_disponiveis >= 0)
);
--
-- Tabela de exemplares
--
CREATE TABLE IF NOT EXISTS exemplares (
    id_exemplar SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_livro SMALLINT UNSIGNED NOT NULL,
    situacao VARCHAR(255) NOT NULL DEFAULT 'Disponível',
    data_aquisicao DATE NOT NULL,
    FOREIGN KEY (id_livro) REFERENCES livros (id_livro) ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT chk_situacao_valida CHECK (situacao = 'Disponível' or situacao = 'Indisponível')
);
--
-- Tabela de consultas
--
CREATE TABLE IF NOT EXISTS consultas (
    id_consulta SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_aluno SMALLINT UNSIGNED NOT NULL,
    id_exemplar SMALLINT UNSIGNED NOT NULL,
    data_consulta DATE NOT NULL DEFAULT (CURRENT_DATE()),
    data_devolucao_prevista DATE NOT NULL DEFAULT (DATE_ADD(data_consulta, INTERVAL 21 DAY)),
    data_devolucao DATE DEFAULT NULL,
    FOREIGN KEY (id_exemplar) REFERENCES exemplares (id_exemplar) ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (id_aluno) REFERENCES alunos (matricula) ON DELETE RESTRICT ON UPDATE CASCADE,
    INDEX idx_fk_exemplar (id_exemplar),
    INDEX idx_fk_aluno (id_aluno)
);

CREATE TABLE IF NOT EXISTS multas (
    id_aluno SMALLINT UNSIGNED NOT NULL,
    id_consulta SMALLINT UNSIGNED NOT NULL,
    dias_atraso SMALLINT UNSIGNED NOT NULL, 
    valor DECIMAL(5, 2) NULL DEFAULT 10.00,
    situacao VARCHAR(255) NOT NULL DEFAULT 'Pendente',
    data_pagamento DATE DEFAULT null,
    PRIMARY KEY(id_aluno, id_consulta),
    FOREIGN KEY (id_consulta) REFERENCES consultas (id_consulta) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_aluno) REFERENCES alunos (matricula) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT chk_situacao CHECK (situacao = 'Pendente' or situacao = 'Paga')
);

DELIMITER $
CREATE TRIGGER insert_after_exemplares AFTER INSERT ON exemplares
FOR EACH ROW
BEGIN
	DECLARE quantia_livros INT DEFAULT 0;
    IF NEW.situacao = 'Disponível' THEN
        SET quantia_livros = 1;
    END IF;

    UPDATE livros
    SET exemplares_disponiveis = exemplares_disponiveis + quantia_livros
    WHERE id_livro = NEW.id_livro;
END$

CREATE TRIGGER update_after_exemplares AFTER UPDATE ON exemplares
FOR EACH ROW
BEGIN
    DECLARE quantia_livros INT DEFAULT 0;

    IF OLD.situacao = 'Disponível' AND NEW.situacao = 'Indisponível' THEN
        SET quantia_livros = -1;
    ELSEIF OLD.situacao = 'Indisponível' AND NEW.situacao = 'Disponível' THEN
        SET quantia_livros = 1;
    END IF;

    UPDATE livros
    SET exemplares_disponiveis = exemplares_disponiveis + quantia_livros
    WHERE id_livro = NEW.id_livro;
END$

CREATE TRIGGER delete_after_exemplares AFTER DELETE ON exemplares
FOR EACH ROW
BEGIN
    DECLARE quantia_livros INT DEFAULT 0;
    IF OLD.situacao = 'Disponível' THEN
        SET quantia_livros = 1;
    END IF;

    UPDATE livros
    SET exemplares_disponiveis = exemplares_disponiveis - quantia_livros
    WHERE id_livro = OLD.id_livro;
END$

CREATE TRIGGER insert_after_consultas AFTER INSERT ON consultas
FOR EACH ROW
BEGIN
    IF NEW.data_devolucao IS NULL THEN -- data_devolucao = null -> Livro ainda não foi devolvido
        UPDATE alunos
        SET livros_em_consulta = livros_em_consulta + 1
        WHERE matricula = NEW.id_aluno;

        UPDATE exemplares
        SET situacao = 'Indisponível'
        WHERE id_exemplar = NEW.id_exemplar;
    END IF;
    -- Não há else if ou else pois nada acontece em alunos ou exemplares 
    -- se um livro que já foi devolvido for inserido
END$

CREATE TRIGGER update_after_consultas AFTER UPDATE ON consultas
FOR EACH ROW
BEGIN
    IF OLD.data_devolucao IS NOT NULL AND NEW.data_devolucao IS NULL THEN -- Livro sendo consultado
        UPDATE alunos
        SET livros_em_consulta = livros_em_consulta + 1
        WHERE matricula = NEW.id_aluno;

        UPDATE exemplares
        SET situacao = 'Indisponível'
        WHERE id_exemplar = NEW.id_exemplar;
    ELSEIF OLD.data_devolucao IS NULL AND NEW.data_devolucao IS NOT NULL THEN -- Livro foi devolvido
        UPDATE alunos
        SET livros_em_consulta = livros_em_consulta - 1
        WHERE matricula = NEW.id_aluno;

        UPDATE exemplares
        SET situacao = 'Disponível'
        WHERE id_exemplar = NEW.id_exemplar;
    END IF;
END$

CREATE TRIGGER delete_after_consultas AFTER DELETE ON consultas
FOR EACH ROW
BEGIN
    IF OLD.data_devolucao IS NULL THEN -- Livro não havia sido devolvido
        UPDATE alunos
        SET livros_em_consulta = livros_em_consulta - 1
        WHERE matricula = OLD.id_aluno;

        UPDATE exemplares
        SET situacao = 'Disponível'
        WHERE id_exemplar = OLD.id_exemplar;
    END IF;
END$

CREATE TRIGGER insert_after_multas AFTER INSERT ON multas
FOR EACH ROW
BEGIN
    UPDATE alunos
    SET multado = 'Sim'
    WHERE NEW.id_aluno = matricula;
END$

CREATE TRIGGER update_after_multas AFTER UPDATE ON multas
FOR EACH ROW
BEGIN 
    IF NEW.situacao = 'Paga' THEN
        -- Se não existir nenhuma multa pendente
        IF NOT EXISTS (
            SELECT 1
            FROM multas
            WHERE id_aluno = NEW.id_aluno
              AND situacao = 'Pendente'
        ) THEN
            UPDATE alunos
            SET multado = 'Não'
            WHERE matricula = NEW.id_aluno;
        END IF;
    ELSEIF NEW.situacao = 'Pendente' THEN
        UPDATE alunos
        SET multado = 'Sim'
        WHERE matricula = NEW.id_aluno;
    END IF;
END$

CREATE TRIGGER after_delete_multas AFTER DELETE ON multas
FOR EACH ROW
BEGIN
    -- Se não houver outras multas pendentes, definimos multado como 'Não'
    IF NOT EXISTS (
        SELECT 1
        FROM multas
        WHERE id_aluno = OLD.id_aluno
          AND situacao = 'Pendente'
    ) THEN
        UPDATE alunos
        SET multado = 'Não'
        WHERE matricula = OLD.id_aluno;
    END IF;
END$

CREATE EVENT IF NOT EXISTS verificar_atrasos_diario
ON SCHEDULE EVERY 1 MINUTE
ON COMPLETION PRESERVE DO
BEGIN
    INSERT INTO multas (id_aluno, id_consulta, dias_atraso, valor)
    SELECT
        c.id_aluno,
        c.id_consulta,
        DATEDIFF(CURDATE(), c.data_devolucao_prevista) as dias_atraso,
        DATEDIFF(CURDATE(), c.data_devolucao_prevista) * 2 as valor
    FROM consultas c
    WHERE c.data_devolucao_prevista < CURDATE() AND c.data_devolucao IS NULL
    ON DUPLICATE KEY UPDATE
        dias_atraso = DATEDIFF(CURDATE(), c.data_devolucao_prevista),
        valor = DATEDIFF(CURDATE(), c.data_devolucao_prevista) * 2;
END$

DELIMITER ;

DROP VIEW IF EXISTS alunos_com_livros_em_consulta;
CREATE VIEW alunos_com_livros_em_consulta AS
SELECT
    a.matricula,
    a.nome,
    a.sobrenome,
    a.turma,
    a.livros_em_consulta
FROM alunos a
WHERE a.livros_em_consulta > 0;

DROP VIEW IF EXISTS livros_disponiveis;
CREATE VIEW livros_disponiveis AS
SELECT
    l.id_livro,
    l.titulo,
    l.autor,
    l.categoria,
    l.exemplares_disponiveis
FROM livros l
WHERE l.exemplares_disponiveis > 0;

DROP VIEW IF EXISTS alunos_multados;
CREATE VIEW alunos_multados AS
SELECT
    a.matricula,
    a.nome, 
    a.sobrenome,
    a.turma,
    l.titulo as livro,
    m.valor,
    m.dias_atraso 
FROM alunos a 
JOIN multas m ON a.matricula = m.id_aluno
JOIN consultas c ON m.id_consulta = c.id_consulta
JOIN exemplares e ON c.id_exemplar = e.id_exemplar
JOIN livros l ON e.id_livro = l.id_livro
ORDER BY dias_atraso DESC, nome, sobrenome;

DROP VIEW IF EXISTS historico_consultas_aluno;
CREATE VIEW historico_consultas_aluno AS
SELECT
    a.matricula,
    a.nome,
    a.sobrenome,
    l.titulo as livro,
    c.data_consulta,
    c.data_devolucao,
    c.data_devolucao_prevista
FROM consultas c
JOIN alunos a ON c.id_aluno = a.matricula
JOIN exemplares e ON c.id_exemplar = e.id_exemplar
JOIN livros l ON e.id_livro = l.id_livro;

DROP VIEW IF EXISTS livros_mais_emprestados;
CREATE VIEW livros_mais_emprestados AS
SELECT
    l.titulo AS livro,
    COUNT(c.id_consulta) as total_emprestimos
FROM livros l
JOIN exemplares e ON l.id_livro = e.id_livro
JOIN consultas c ON e.id_exemplar = c.id_exemplar
GROUP BY l.titulo
ORDER BY total_emprestimos DESC;