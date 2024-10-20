USE biblioteca;
INSERT INTO alunos (nome, sobrenome, turma)
VALUES ('Antony', 'Fonseca', 'ALI1M'),
    ('Kaique', 'Cavalcanti', 'ALI1M'),
    ('Ana Julia', 'Barros', 'ALI1V'),
    ('Davi Miguel', 'Ferreira', 'ALI1V'),
    ('João Felipe', 'Cassiano', 'ALI1V'),
    ('Leonardo', 'Ferreira', 'ALI1V'),
    ('Luiz Otávio', 'Macedo', 'ALI1V'),
    ('Yasmin', 'da Cunha', 'ALI1V'),
    ('Maria Vitória', 'Moraes', 'ALI2M'),
    ('Clarice', 'Abreu', 'ALI2V'),
    ('Daniel', 'Ferreira', 'ALI2V'),
    ('José Miguel', 'Costela', 'ALI2V'),
    ('Mateus', 'Marques', 'ALI2V'),
    ('Rebeca', 'Novaes', 'ALI2V'),
    ('Sophie', 'Monteiro', 'ALI2V'),
    ('Alana', 'Mendes', 'ALI3M'),
    ('Amanda', 'Rocha', 'ALI3M'),
    ('Emanuelly', 'Pacheco', 'ALI3M'),
    ('José Miguel', 'da Costa', 'ALI3M'),
    ('João Miguel', 'Macedo', 'ALI3M'),
    ('Miguel', 'Silveira', 'ALI3M'),
    ('Anthony Gabriel', 'Cunha', 'ALI3V'),
    ('Brayan', 'da Costa', 'ALI3V'),
    ('Enrico', 'Cirino', 'ALI3V'),
    ('Maya', 'Vasconcelos', 'ALI3V'),
    ('Pietro', 'Moura', 'ALI3V'),
    ('Sofia', 'Fonseca', 'ALI3V'),
    ('Clara', 'Casa Grande', 'ALI4M'),
    ('Gael', 'Lima', 'ALI4M'),
    ('Hadassa', 'da Rosa', 'ALI4M'),
    ('Luan', 'Pinto', 'ALI4M'),
    ('Benicio', 'Novais', 'ALI4V'),
    ('Lavínia', 'da Luz', 'ALI4V'),
    ('Levi', 'Camargo', 'ALI4V'),
    ('Melissa', 'Viana', 'ALI4V'),
    ('Bianca', 'da Costa', 'API1M'),
    ('Henry Gabriel', 'Souza', 'API1M'),
    ('Luna', 'Garcia', 'API1M'),
    ('Paulo', 'Caldeira', 'API1M'),
    ('Felipe', 'Nunes', 'API1V'),
    ('Henry', 'Siqueira', 'API1V'),
    ('Camila', 'Monteiro', 'API2M'),
    ('Luiz Miguel', 'Peixoto', 'API2M'),
    ('Maitê', 'Cavalcante', 'API2M'),
    ('Maria Luiza', 'Vasconcelos', 'API2M'),
    ('Ravi Lucca', 'da Conceição', 'API2M'),
    ('Marcela', 'Vargas', 'API2V'),
    ('Théo', 'Cirino', 'API2V'),
    ('João', 'Cardoso', 'API3M'),
    ('João Guilherme', 'Cavalcanti', 'API3M'),
    ('Larissa', 'Costa', 'API3M'),
    ('Laura', 'da Costa', 'API3M'),
    ('Rafaela', 'Sales', 'API3M'),
    ('Rebeca', 'Vieira', 'API3M'),
    ('Yan', 'Nogueira', 'API3M'),
    ('Ana Beatriz', 'Fogaça', 'API3V'),
    ('Maysa', 'Montenegro', 'API3V'),
    ('Joaquim', 'da Mota', 'API4M'),
    ('Leonardo', 'da Paz', 'API4M'),
    ('Heloísa', 'Camargo', 'API4V'),
    ('Léo', 'Fogaça', 'API4V'),
    ('Maria Sophia', 'da Conceição', 'API4V'),
    ('Maria Vitória', 'da Rosa', 'API4V'),
    ('Sofia', 'Rocha', 'API4V'),
    ('Vinícius', 'Cardoso', 'API4V'),
    ('Augusto', 'Lopes', 'INF1M'),
    ('Gabriel', 'Silveira', 'INF1M'),
    ('Ana Lívia', 'Mendes', 'INF1V'),
    ('Laura', 'Pires', 'INF1V'),
    ('Ana Julia', 'Mendonça', 'INF2M'),
    ('Paulo', 'Peixoto', 'INF2M'),
    ('Asafe', 'Brito', 'INF2V'),
    ('Maria Vitória', 'Freitas', 'INF2V'),
    ('Sophie', 'Costa', 'INF2V'),
    ('Yasmin', 'Pires', 'INF2V'),
    ('Alexia', 'da Mata', 'INF3M'),
    ('Ana Lívia', 'Lima', 'INF3M'),
    ('João Guilherme', 'Almeida', 'INF3M'),
    ('Luiz Henrique', 'Moraes', 'INF3M'),
    ('Maria Alice', 'Pinto', 'INF3M'),
    ('Vicente', 'Macedo', 'INF3M'),
    ('Alexandre', 'Vieira', 'INF3V'),
    ('Alice', 'Alves', 'INF3V'),
    ('Caleb', 'Sales', 'INF3V'),
    ('Davi Lucas', 'Pereira', 'INF3V'),
    ('Luara', 'Macedo', 'INF3V'),
    ('Maya', 'Vieira', 'INF3V'),
    ('Natália', 'Moura', 'INF3V'),
    ('Nicolas', 'Freitas', 'INF3V'),
    ('Alexandre', 'Lima', 'INF4M'),
    ('Bella', 'Porto', 'INF4M'),
    ('Brenda', 'Barbosa', 'INF4M'),
    ('Isadora', 'Macedo', 'INF4M'),
    ('Isis', 'Silveira', 'INF4M'),
    ('João Felipe', 'Fernandes', 'INF4M'),
    ('Nicole', 'Mendonça', 'INF4M'),
    ('Olívia', 'Vieira', 'INF4M'),
    ('Henrique', 'Rocha', 'INF4V'),
    ('Isabel', 'Castro', 'INF4V'),
    ('Júlia', 'Macedo', 'INF4V');
INSERT INTO livros (titulo, autor, categoria, isbn, ano)
VALUES ('A Torre de Nero', 'Rick Riordan', 'Esportes', '9786555600636', '2009'),
    ('Este é o mar', 'Mariana Enriquez', 'Drama', '9788551005002', '2009'),
    ('Inimigo Mortal', 'Michael T.Osterholm', 'Espiritualidade', '9786555600131', '2009'),
    ('Inspeção', 'Josh Malerman', 'Nutrição', '9788551005262', '2009'),
    ('Misbehaving', 'Richard H.Thaler', 'Autobiografia', '9788551004135', '2009'),
    ('Ponti', 'Sharlene Teo', 'Mistério', '9788551004821', '2009'),
    ('Princípios Para O Sucesso', 'Ray Dalio', 'Filosofia', '9788551006467', '2009'),
    ('Um Lugar Bem Longe Daqui', 'Delia Owens', 'Arte', '9788551004869', '2009'),
    ('Ainda Sou Eu', 'Jojo Moyes', 'Fotografia', '9788551003718', '2010'),
    ('As Férias da Minha Vida', 'Clara Savelli', 'Saúde e Bem-estar', '9788551005170', '2010'),
    ('Quarenta e Quatro em Quarentena', 'Miguel Pinto Guimarães', 'Espiritualidade', '9786555601329', '2010'),
    ('Serpentário', 'Felipe Castilho', 'Saúde e Bem-estar', '9788551005309', '2010'),
    ('130 anos: Em busca da República', 'Alexandre de Moraes', 'Jovem Adulto', '9788551004968', '2011'),
    ('A Tumba Do Tirano', 'Rick Riordan', 'Psicologia', '9788551005347', '2011'),
    ('Café Da Manhã Dos Campeões', 'Kurt Vonnegut', 'Espiritualidade', '9788551005804', '2011'),
    ('Daqui Pra Baixo', 'Jason Reynolds', 'Ficção Científica', '9788551004982', '2011'),
    ('E Se Fosse A Gente ?', 'Becky Albertalli', 'Política', '9788551004890', '2011'),
    ('O verão que mudou minha vida', 'Jenny Han', 'Ciências Sociais', '9788551004449', '2011'),
    ('O Árabe do Futuro', 'Riad Sattouf', 'Negócios', '9788551006665', '2011'),
    ('Rede de Sussurros', 'Chandler Baker', 'Drama', '9788551005286', '2011'),
    ('Holocausto Brasileiro', 'Daniela Arbex', 'Nutrição', '9788551004630', '2012'),
    ('Recursão', 'Blake Crouch', 'Fotografia', '9788551005361', '2012'),
    ('Um Caminho Para a Liberdade', 'Jojo Moyes', 'Saúde e Bem-estar', '9788551005453', '2012'),
    ('A Sutil Arte de Ligar o F*da-se', 'Manson Mark', 'Autobiografia', '9788551004333', '2013'),
    ('Cidade nas Trevas', 'Adam Christopher', 'Viagem', '9788551006290', '2013'),
    ('Com Amor, Creekwood', 'Becky Albertalli', 'Viagem', '9786555600278', '2013'),
    ('Mundo Em Caos (Vol. 1)', 'Patrick Ness', 'Autoajuda', '9788551004517', '2013'),
    ('O Livro De Líbero', 'Alfredo Nugent Setubal', 'Fotografia', '9788551006177', '2013'),
    ('O Quinto Risco', 'Michael Lewis', 'Espiritualidade', '9788551004616', '2013'),
    ('O construtor de pontes', 'Markus Zusak', 'Poesia', '9788551003985', '2013'),
    ('O desaparecimento de Josef Mengele', 'Olivier Guez', 'Biografia', '9788551004708', '2013'),
    ('Onde os sonhos acontecem', 'Robert Iger', 'Fotografia', '9788551006672', '2013'),
    ('Os Dois Mundos de Isabel', 'Daniela Arbex', 'Poesia', '9788551006580', '2013'),
    ('A Última Festa', 'Lucy Foley', 'Autobiografia', '9788551005729', '2014'),
    ('A última porta', 'Scott Cawthon', 'Política', '9788551005989', '2014'),
    ('Agassi', 'Andre Agassi', 'Fotografia', '9788551005392', '2014'),
    ('As Crônicas de Âmbar', 'Roger Zezlany', 'Romance', '9788551003350', '2014'),
    ('As Outras Pessoas', 'C.J. Tudor', 'História', '9788551006504', '2014'),
    ('Coragem', 'Raina Telgemeier', 'Terror', '9788551006542', '2014'),
    ('Mister', 'E.L. James', 'Mistério', '9788551005156', '2014'),
    ('O Construtor de Pontes', 'Markus Zusak', 'Saúde e Bem-estar', '9788551003992', '2014'),
    ('O Que Aconteceu Com Annie', 'C.J.Tudor', 'Ficção Científica', '9788551004753', '2014'),
    ('Promessa de Pai', 'Joe Biden', 'Poesia', '9786555600520', '2014'),
    ('Tim Cook: O Gênio que Mudou o Futuro da Apple', 'Leander Kahney', 'Biografia', '9788551005538', '2014'),
    ('Uma chance de lutar', 'Elizabeth Warren', 'Esportes', '9788551006313', '2014'),
    ('A Pena e a Lei', 'Ariano Suassuna', 'Política', '9788520942864', '2015'),
    ('A Quietude É A Chave', 'Ryan Holiday', 'Saúde e Bem - estar', '9788551005767', '2015'),
    ('Cartas para Martin', 'Nic Stone', 'Contos', '9788551006658', '2015'),
    ('F * deu Geral: Um Livro Sobre Esperança ?', 'Mark Manson', 'Poesia', '9788551004906', '2015'),
    ('Na Raça', 'Maria Luíza Filgueiras', 'Autoajuda', '9788551006054', '2015'),
    ('Nove Desconhecidos', 'Liane Moriarty', 'Biografia', '9788551004685', '2015'),
    ('O Silêncio da Cidade Branca', 'Eva García Sáenz de Urturi', 'Mistério', '9788551006689', '2015'),
    ('Os segredos que guardamos', 'Lara Prescott', 'História', '9788551005675', '2015'),
    ('Segredo De Justiça', 'Andréa Pachá', 'Drama', '9788551006115', '2015'),
    ('Como o Cérebro Cria', 'David Eagleman', 'Fotografia', '9788551006481', '2016'),
    ('Para Todos os Garotos que Já Amei', 'Jenny Han', 'Jovem Adulto', '9788580577266', '2016'),
    ('A Guerra Pela Uber', 'Mike Isaac', 'Romance', '9788551006214', '2017'),
    ('Medicina dos Horrores', 'Lindsey Fitzharris', 'Fotografia', '9788551005224', '2017'),
    ('O Caso Da Mansão Deboën', 'Edgar Cantero', 'Arte', '9788551004197', '2017'),
    ('Sempre teremos o verão', 'Jenny Han', 'Esportes', '9788551004487', '2017'),
    ('Shine', 'Jessica Jung', 'Religião', '9786555600506', '2017'),
    ('Terra Americana', 'Jeanine Cummins', 'Religião', '9788551006528', '2017'),
    ('Uma Dor Tão Doce', 'David Nicholls', 'Fotografia', '9788551005743', '2017'),
    ('Você não merece ser feliz', 'Daniel Furlan', 'Esportes', '9788551006443', '2017'),
    ('1793', 'Niklas Natt och Dag', 'Autoajuda', '9788551006320', '2018'),
    ('A Caminho da Guerra', 'Graham Allison', 'História', '9786555600346', '2018'),
    ('A Segunda Vida de Missy', 'Beth Morrey', 'Espiritualidade', '9786555600834', '2018'),
    ('Coraline', 'Neil Gaiman', 'Mistério', '9788551006757', '2018'),
    ('Oblivion Song: Entre Dois Mundos', 'Robert Kirkman', 'Autobiografia', '9788551006252', '2018'),
    ('A Convenção Das Aves', 'Ransom Riggs', 'Biografia', '9788551006245', '2019'),
    ('Amor & Sorte', 'Jenna Evans Welch', 'Literatura Clássica', '9786555600087', '2019'),
    ('Areia Movediça', 'Malin Persson Giolito', 'Nutrição', '9788551004746', '2019'),
    ('Bird Box: Caixa De Pássaros - Edição Especial', 'Josh Malerman', 'Fantasia', '9788551004937', '2019'),
    ('Cova 312', 'Daniela Arbex', 'Contos', '9788551005569', '2019'),
    ('O que Aconteceu com Annie', 'C.J.Tudor', 'Nutrição', '9788551004753', '2019'),
    ('Os prós e os contras de nunca esquecer', 'Val Emmich', 'Jovem Adulto', '9788551003688', '2019'),
    ('P.S.: Ainda Amo Você', 'Jenny Han', 'Política', '9788580578690', '2019'),
    ('Pachinko', 'Min Jin Lee', 'Desenvolvimento Pessoal', '9788551006344', '2019'),
    ('Princípios do Estrategista', 'Felipe Miranda', 'Fantasia', '9786555600810', '2019'),
    ('Quem é você, Alasca?', 'John Green', 'Terror', '9788580576832', '2019'),
    ('SuperNormal', 'Greg James', 'Biografia', '9788551006719', '2019'),
    ('Território Lovecraft', 'Matt Ruff', 'Mistério', '9788551006207', '2019'),
    ('A dança da água', 'Ta - Nehisi Coates', 'Espiritualidade', '9788551006368', '2020'),
    ('Matadouro Cinco', 'Kurt Vonnegut', 'Mistério', '9788551004593', '2020'),
    ('Mataram Marielle', 'Chico Otávio', 'Mistério', '9786555600384', '2020'),
    ('O Labirinto do Fauno', 'Cornelia Maria Funke', 'Ciências Sociais', '9788551005194', '2020'),
    ('Adultos', 'Emma Jane Unsworth', 'Ficção Científica', '9786555600032', '2021'),
    ('Boy Erased', 'Garrard Conley', 'Política', '9788551004111', '2021'),
    ('Me Encontre', 'André Aciman', 'Educação', '9788551005828', '2021'),
    ('Cem', 'Valerio Vidali', 'Psicologia', '9788551005439', '2022'),
    ('Black Hammer (Vol #4)', 'Jeff Lemire', 'Filosofia', '9788551006634', '2023'),
    ('Observações sobre um planeta nervoso', 'Matt Haig', 'Educação', '9786555600209', '2023'),
    ('Ruptura', 'Monica de Bolle', 'Fantasia', '9786555600360', '2023'),
    ('Vamos Sonhar Juntos', 'Papa Francisco', 'Drama', '9786555601251', '2023'),
    ('A Casa Holandesa', 'Ann Patchett', 'Contos', '9788551006603', '2024'),
    ('Alexander Hamilton', 'Ron Chernow', 'Desenvolvimento Pessoal', '9788551006139', '2024'),
    ('Box Five Nights at Freddys (Trilogia Completa)', 'Scott Cawthon', 'Desenvolvimento Pessoal', '9786555600858', '2024'),
    ('Minha Sombria Vanessa', 'Kate Elizabeth Russell', 'Nutrição', '9788551006276', '2024'),
    ('Não é errado ser feliz', 'Linda Holmes', 'Espiritualidade', '9786555601121', '2024'),
    ('Pátria', 'Fernando Aramburu', 'História', '9788551004944', '2024');
INSERT INTO exemplares (id_livro, data_aquisicao)
VALUES (1, '2015-09-24'),
    (1, '2015-09-24'),
    (1, '2015-09-24'),
    (2, '2009-04-04'),
    (2, '2009-04-04'),
    (2, '2009-04-04'),
    (2, '2009-04-04'),
    (2, '2009-04-04'),
    (3, '2021-05-06'),
    (3, '2021-05-06'),
    (3, '2021-05-06'),
    (3, '2021-05-06'),
    (3, '2021-05-06'),
    (4, '2010-12-27'),
    (4, '2010-12-27'),
    (4, '2010-12-27'),
    (4, '2010-12-27'),
    (4, '2010-12-27'),
    (4, '2010-12-27'),
    (5, '2021-09-20'),
    (5, '2021-09-20'),
    (5, '2021-09-20'),
    (6, '2015-01-23'),
    (6, '2015-01-23'),
    (6, '2015-01-23'),
    (7, '2014-02-13'),
    (7, '2014-02-13'),
    (7, '2014-02-13'),
    (7, '2014-02-13'),
    (7, '2014-02-13'),
    (7, '2014-02-13'),
    (7, '2014-02-13'),
    (8, '2014-02-22'),
    (8, '2014-02-22'),
    (9, '2015-07-19'),
    (9, '2015-07-19'),
    (10, '2020-10-15'),
    (10, '2020-10-15'),
    (10, '2020-10-15'),
    (10, '2020-10-15'),
    (10, '2020-10-15'),
    (10, '2020-10-15'),
    (11, '2016-05-18'),
    (11, '2016-05-18'),
    (12, '2012-10-25'),
    (12, '2012-10-25'),
    (12, '2012-10-25'),
    (12, '2012-10-25'),
    (12, '2012-10-25'),
    (13, '2015-05-09'),
    (13, '2015-05-09'),
    (13, '2015-05-09'),
    (14, '2023-10-03'),
    (15, '2021-02-19'),
    (15, '2021-02-19'),
    (15, '2021-02-19'),
    (15, '2021-02-19'),
    (16, '2017-02-14'),
    (16, '2017-02-14'),
    (17, '2012-10-28'),
    (17, '2012-10-28'),
    (17, '2012-10-28'),
    (18, '2016-10-22'),
    (18, '2016-10-22'),
    (19, '2016-06-06'),
    (19, '2016-06-06'),
    (19, '2016-06-06'),
    (20, '2012-10-13'),
    (20, '2012-10-13'),
    (20, '2012-10-13'),
    (20, '2012-10-13'),
    (20, '2012-10-13'),
    (20, '2012-10-13'),
    (20, '2012-10-13'),
    (20, '2012-10-13'),
    (21, '2024-06-24'),
    (21, '2024-06-24'),
    (21, '2024-06-24'),
    (21, '2024-06-24'),
    (21, '2024-06-24'),
    (21, '2024-06-24'),
    (22, '2023-08-02'),
    (22, '2023-08-02'),
    (22, '2023-08-02'),
    (22, '2023-08-02'),
    (22, '2023-08-02'),
    (23, '2019-01-04'),
    (23, '2019-01-04'),
    (24, '2017-02-10'),
    (24, '2017-02-10'),
    (25, '2020-04-17'),
    (25, '2020-04-17'),
    (25, '2020-04-17'),
    (25, '2020-04-17'),
    (26, '2018-08-29'),
    (26, '2018-08-29'),
    (26, '2018-08-29'),
    (27, '2023-06-09'),
    (27, '2023-06-09'),
    (28, '2014-07-15'),
    (28, '2014-07-15'),
    (28, '2014-07-15'),
    (28, '2014-07-15'),
    (28, '2014-07-15'),
    (28, '2014-07-15'),
    (28, '2014-07-15'),
    (28, '2014-07-15'),
    (29, '2020-12-28'),
    (29, '2020-12-28'),
    (29, '2020-12-28'),
    (29, '2020-12-28'),
    (29, '2020-12-28'),
    (29, '2020-12-28'),
    (30, '2015-08-26'),
    (30, '2015-08-26'),
    (30, '2015-08-26'),
    (30, '2015-08-26'),
    (30, '2015-08-26'),
    (31, '2016-09-26'),
    (31, '2016-09-26'),
    (31, '2016-09-26'),
    (32, '2019-12-09'),
    (32, '2019-12-09'),
    (32, '2019-12-09'),
    (33, '2022-11-16'),
    (33, '2022-11-16'),
    (34, '2015-06-24'),
    (34, '2015-06-24'),
    (35, '2024-08-19'),
    (35, '2024-08-19'),
    (36, '2021-09-15'),
    (36, '2021-09-15'),
    (36, '2021-09-15'),
    (37, '2023-04-25'),
    (37, '2023-04-25'),
    (37, '2023-04-25'),
    (38, '2020-11-22'),
    (38, '2020-11-22'),
    (39, '2024-01-28'),
    (39, '2024-01-28'),
    (39, '2024-01-28'),
    (40, '2021-07-09'),
    (40, '2021-07-09'),
    (40, '2021-07-09'),
    (40, '2021-07-09'),
    (40, '2021-07-09'),
    (40, '2021-07-09'),
    (41, '2022-03-20'),
    (41, '2022-03-20'),
    (41, '2022-03-20'),
    (42, '2018-09-15'),
    (42, '2018-09-15'),
    (42, '2018-09-15'),
    (42, '2018-09-15'),
    (43, '2021-12-15'),
    (43, '2021-12-15'),
    (43, '2021-12-15'),
    (43, '2021-12-15'),
    (43, '2021-12-15'),
    (44, '2023-08-02'),
    (44, '2023-08-02'),
    (44, '2023-08-02'),
    (45, '2016-04-02'),
    (46, '2017-01-21'),
    (46, '2017-01-21'),
    (47, '2015-05-28'),
    (48, '2020-07-19'),
    (48, '2020-07-19'),
    (48, '2020-07-19'),
    (48, '2020-07-19'),
    (48, '2020-07-19'),
    (49, '2024-03-31'),
    (49, '2024-03-31'),
    (50, '2024-04-22'),
    (50, '2024-04-22'),
    (50, '2024-04-22'),
    (51, '2020-09-18'),
    (51, '2020-09-18'),
    (51, '2020-09-18'),
    (51, '2020-09-18'),
    (51, '2020-09-18'),
    (51, '2020-09-18'),
    (52, '2023-12-06'),
    (52, '2023-12-06'),
    (52, '2023-12-06'),
    (52, '2023-12-06'),
    (52, '2023-12-06'),
    (53, '2023-10-20'),
    (53, '2023-10-20'),
    (53, '2023-10-20'),
    (53, '2023-10-20'),
    (53, '2023-10-20'),
    (53, '2023-10-20'),
    (54, '2016-02-04'),
    (54, '2016-02-04'),
    (54, '2016-02-04'),
    (54, '2016-02-04'),
    (54, '2016-02-04'),
    (55, '2019-01-29'),
    (55, '2019-01-29'),
    (55, '2019-01-29'),
    (55, '2019-01-29'),
    (55, '2019-01-29'),
    (55, '2019-01-29'),
    (56, '2023-05-16'),
    (56, '2023-05-16'),
    (57, '2017-05-16'),
    (57, '2017-05-16'),
    (57, '2017-05-16'),
    (57, '2017-05-16'),
    (58, '2022-10-17'),
    (58, '2022-10-17'),
    (58, '2022-10-17'),
    (58, '2022-10-17'),
    (59, '2021-10-01'),
    (59, '2021-10-01'),
    (59, '2021-10-01'),
    (59, '2021-10-01'),
    (60, '2020-07-08'),
    (61, '2022-11-23'),
    (61, '2022-11-23'),
    (62, '2017-06-04'),
    (62, '2017-06-04'),
    (63, '2021-12-14'),
    (63, '2021-12-14'),
    (64, '2017-02-15'),
    (64, '2017-02-15'),
    (64, '2017-02-15'),
    (65, '2023-01-04'),
    (66, '2018-07-09'),
    (66, '2018-07-09'),
    (67, '2018-10-03'),
    (67, '2018-10-03'),
    (68, '2024-10-01'),
    (68, '2024-10-01'),
    (68, '2024-10-01'),
    (69, '2023-01-21'),
    (69, '2023-01-21'),
    (69, '2023-01-21'),
    (69, '2023-01-21'),
    (69, '2023-01-21'),
    (70, '2023-03-11'),
    (70, '2023-03-11'),
    (70, '2023-03-11'),
    (70, '2023-03-11'),
    (71, '2019-06-27'),
    (71, '2019-06-27'),
    (71, '2019-06-27'),
    (72, '2024-10-09'),
    (72, '2024-10-09'),
    (72, '2024-10-09'),
    (72, '2024-10-09'),
    (72, '2024-10-09'),
    (72, '2024-10-09'),
    (73, '2020-12-01'),
    (73, '2020-12-01'),
    (73, '2020-12-01'),
    (74, '2020-01-08'),
    (74, '2020-01-08'),
    (74, '2020-01-08'),
    (74, '2020-01-08'),
    (74, '2020-01-08'),
    (74, '2020-01-08'),
    (75, '2021-09-24'),
    (75, '2021-09-24'),
    (76, '2022-05-27'),
    (76, '2022-05-27'),
    (76, '2022-05-27'),
    (76, '2022-05-27'),
    (76, '2022-05-27'),
    (77, '2022-04-25'),
    (77, '2022-04-25'),
    (77, '2022-04-25'),
    (77, '2022-04-25'),
    (77, '2022-04-25'),
    (77, '2022-04-25'),
    (77, '2022-04-25'),
    (77, '2022-04-25'),
    (78, '2019-11-06'),
    (78, '2019-11-06'),
    (79, '2024-12-11'),
    (79, '2024-12-11'),
    (79, '2024-12-11'),
    (79, '2024-12-11'),
    (79, '2024-12-11'),
    (79, '2024-12-11'),
    (80, '2020-01-20'),
    (80, '2020-01-20'),
    (80, '2020-01-20'),
    (80, '2020-01-20'),
    (81, '2019-12-08'),
    (81, '2019-12-08'),
    (81, '2019-12-08'),
    (82, '2024-02-27'),
    (83, '2021-02-01'),
    (83, '2021-02-01'),
    (83, '2021-02-01'),
    (84, '2022-10-04'),
    (84, '2022-10-04'),
    (84, '2022-10-04'),
    (84, '2022-10-04'),
    (84, '2022-10-04'),
    (85, '2023-02-06'),
    (85, '2023-02-06'),
    (86, '2020-07-04'),
    (86, '2020-07-04'),
    (87, '2024-03-03'),
    (87, '2024-03-03'),
    (87, '2024-03-03'),
    (87, '2024-03-03'),
    (87, '2024-03-03'),
    (88, '2022-02-13'),
    (88, '2022-02-13'),
    (89, '2024-09-18'),
    (89, '2024-09-18'),
    (89, '2024-09-18'),
    (89, '2024-09-18'),
    (89, '2024-09-18'),
    (89, '2024-09-18'),
    (89, '2024-09-18'),
    (90, '2022-02-23'),
    (90, '2022-02-23'),
    (90, '2022-02-23'),
    (90, '2022-02-23'),
    (90, '2022-02-23'),
    (90, '2022-02-23'),
    (90, '2022-02-23'),
    (91, '2024-04-07'),
    (91, '2024-04-07'),
    (91, '2024-04-07'),
    (91, '2024-04-07'),
    (91, '2024-04-07'),
    (91, '2024-04-07'),
    (92, '2023-04-07'),
    (92, '2023-04-07'),
    (92, '2023-04-07'),
    (93, '2024-02-05'),
    (93, '2024-02-05'),
    (93, '2024-02-05'),
    (93, '2024-02-05'),
    (94, '2024-02-21'),
    (94, '2024-02-21'),
    (94, '2024-02-21'),
    (94, '2024-02-21'),
    (94, '2024-02-21'),
    (94, '2024-02-21'),
    (95, '2024-01-14'),
    (95, '2024-01-14'),
    (96, '2024-10-03'),
    (96, '2024-10-03'),
    (96, '2024-10-03'),
    (96, '2024-10-03'),
    (97, '2024-07-08'),
    (97, '2024-07-08'),
    (97, '2024-07-08'),
    (98, '2024-01-13'),
    (98, '2024-01-13'),
    (98, '2024-01-13'),
    (98, '2024-01-13'),
    (98, '2024-01-13'),
    (98, '2024-01-13'),
    (98, '2024-01-13'),
    (99, '2024-10-09'),
    (99, '2024-10-09'),
    (100, '2024-08-16'),
    (100, '2024-08-16'),
    (100, '2024-08-16'),
    (100, '2024-08-16'),
    (100, '2024-08-16'),
    (100, '2024-08-16');