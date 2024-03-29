# API de Cadastro de Alunos

## Descrição
A API de Cadastro de Alunos é uma aplicação desenvolvida em .NET que fornece endpoints para realizar operações de cadastro, atualização, remoção e consulta de informações de alunos. Utiliza o banco de dados PostgreSQL para armazenamento dos dados.

## Recursos Principais
- **Cadastro de Alunos:** Permite adicionar novos alunos ao sistema.
- **Atualização de Alunos:** Permite atualizar as informações de um aluno existente.
- **Remoção de Alunos:** Permite remover um aluno do sistema.
- **Consulta de Alunos:** Fornece endpoints para buscar informações detalhadas de alunos individualmente ou listar todos os alunos cadastrados.

## Documentação da API
Acesse a [documentação interativa da API](https://api-school-axiz.onrender.com/swagger) para explorar os endpoints disponíveis, os modelos de dados utilizados e realizar testes diretamente na interface.

## Tecnologias Utilizadas
- **Plataforma de Desenvolvimento:** .NET
- **Framework Web:** ASP.NET Core
- **Banco de Dados:** PostgreSQL
- **Documentação da API:** Swagger

## Endpoints Principais
1. **POST /api/alunos**: Cria um novo aluno no sistema.
2. **PUT /api/alunos/{id}**: Atualiza as informações de um aluno existente com base no ID.
3. **DELETE /api/alunos/{id}**: Remove um aluno do sistema com base no ID.
4. **GET /api/alunos/{id}**: Retorna as informações de um aluno específico com base no ID.
5. **GET /api/alunos**: Retorna uma lista de todos os alunos cadastrados no sistema.

## Exemplo de Uso
```bash
# Criar um novo aluno
curl -X POST "https://api-school-axiz.onrender.com/api/alunos" -H "Content-Type: application/json" -d '{"nome": "João", "idade": 20, "curso": "Engenharia de Software"}'

# Atualizar as informações de um aluno existente
curl -X PUT "https://api-school-axiz.onrender.com/api/alunos/1" -H "Content-Type: application/json" -d '{"nome": "João Silva", "idade": 21, "curso": "Engenharia de Software"}'

# Remover um aluno do sistema
curl -X DELETE "https://api-school-axiz.onrender.com/api/alunos/1"

# Buscar informações de um aluno específico
curl -X GET "https://api-school-axiz.onrender.com/api/alunos/1"

# Listar todos os alunos cadastrados
curl -X GET "https://api-school-axiz.onrender.com/api/alunos"
