# A3 Modelagem de Software

## Como baixar o projeto

Clone este repositório usando o comando abaixo:

```sh
git clone https://github.com/seu-usuario/seu-repositorio.git
```

## Requisitos

- [Docker](https://www.docker.com/products/docker-desktop/) instalado na sua máquina
- [MySQL Workbench](https://dev.mysql.com/downloads/workbench/) para executar os scripts SQL

## Como rodar o banco de dados

1. Abra o terminal na pasta `Banco-de-dados-modelagem`.
2. Execute o comando abaixo para iniciar o container MySQL:

```sh
docker-compose up -d
```

O banco estará disponível na porta `3306` com:

- Usuário: `root`
- Senha: `rootpassword`
- Banco: `bd-modelagem`

## Executando os scripts SQL

1. Abra o MySQL Workbench e conecte-se ao banco de dados usando as credenciais acima.
2. Execute os scripts SQL na seguinte ordem (arquivos estão na pasta `Codigos sql`):

   1. **Criação das tabelas:**  
      Abra e execute o arquivo [`criacao_das_tabelas.sql`](Codigos%20sql/criacao_das_tabelas.sql)
   2. **Inserção de dados:**  
      Abra e execute o arquivo [`inserção_de_dados.sql`](Codigos%20sql/inserção_de_dados.sql)
   3. **Atualização de dados:**  
      Abra e execute o arquivo [`atualização_de_dados.sql`](Codigos%20sql/atualização_de_dados.sql)
   4. **Consultas:**  
      Abra e execute o arquivo [`consultas.sql`](Codigos%20sql/consultas.sql)

Pronto! O banco estará populado e pronto para mais inserções, atualizações e consultas.
