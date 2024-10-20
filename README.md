# Descrição

Este banco de dados busca representar e gerenciar uma biblioteca escolar, permitindo que o usuário insira alunos, livros, exemplares de livros, consultas de livros e até multas em consultas. Ademais, o banco de dados dispõe de eventos e triggers que facilitam o gerenciamento e automatizam mudanças ao longo das tabelas em diferentes situações.

# Estrutura do Banco de Dados

Estas são as tabelas usadas pelo banco de dados, seguidas por uma curta descrição de seu propósito.

1. **Alunos**: Contém dados dos alunos que utilizam a biblioteca.

   - Campos principais: `matricula`, `nome`, `turma`, `livros_em_consulta`, `multado`.

2. **Livros**: Armazena dados sobre cada livro disponível.

   - Campos principais: `id_livro`, `titulo`, `autor`, `categoria`, `isbn`, `ano`, `exemplares_disponiveis`.

3. **Exemplares**: Cada exemplar físico de um livro.

   - Campos principais: `id_exemplar`, `id_livro`, `situacao`, `data_aquisicao`.

4. **Consultas**: Guarda dados sobre cada consulta realizada por um aluno de um exemplar.

   - Campos principais: `id_consulta`, `id_aluno`, `id_exemplar`, `data_consulta`, `data_devolucao_prevista`, `data_devolucao`.

5. **Multas**: Registra as multas aplicadas em caso de atraso na devolução de um livro.

   - Campos principais: `id_aluno`, `id_consulta`, `dias_atraso`, `valor`, `situacao`.

# Triggers e Eventos

O sistema possui triggers e eventos para garantir a consistência dos dados e facilitar a manutenção. Segue a lista do que os triggers e eventos fazem em cada tabela.

- **Triggers em Exemplares**: Atualizam a quantidade de exemplares disponíveis ao adicionar, modificar ou excluir um exemplar.
- **Triggers em Consultas**: Gerenciam a atualização do número de livros em consulta por aluno e a situação dos exemplares (disponível ou indisponível).
- **Triggers em Multas**: Atualizam a situação de um aluno (multado ou não) com base nas multas pendentes ou pagas.
- **Evento Diário**: Verifica diariamente se há devoluções em atraso e aplica multas automaticamente, caso necessário.

# Views

O banco de dados dispõe das seguintes views para facilitar consultas comuns.

1. **alunos_com_livros_em_consulta**: Lista os alunos que têm livros em consulta.
2. **livros_disponiveis**: Lista todos os livros disponíveis para consulta.
3. **alunos_multados**: Lista todos os alunos multados, os livros em atraso e o valor da multa.
4. **historico_consultas_aluno**: Exibe o histórico de consultas de cada aluno.
5. **livros_mais_emprestados**: Lista os livros mais emprestados da biblioteca.

# Instalação

Para instalar o banco de dados em sua máquina, siga os seguintes passos:

1. **Clone o repositório do GitHub**:

   Primeiro, clone o repositório para sua máquina local:

   ```bash
   git clone https://github.com/pdr-guilherme/biblioteca-nadic.git
   cd biblioteca-nadic
   ```

2. **Crie o banco de dados e as tabelas**:

   Use o arquivo SQL para criar o banco de dados e as tabelas:

   ```bash
   mysql -u seu-usuario -p < schema.sql
   ```

   Esse comando irá criar o banco de dados `biblioteca`, junto de suas tabelas, triggers, eventos e views.

3. **Inserir dados de teste**:

   Caso deseje popular o banco de dados com alguns dados de teste, execute o arquivo `dados.sql`:

   ```bash
   mysql -u seu-usuario -p < dados.sql
   ```

4. **Verifique se a instalação foi bem sucedida:**

   Após a instalação, você pode verificar se as tabelas foram criadas corretamente:

   ```bash
   mysql -u seu-usuario -p -e "USE biblioteca; SHOW TABLES;"
   ```
