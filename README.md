# Sistema de Gerenciamento de Livraria

Este projeto de modelagem de dados visa criar um sistema de gerenciamento de uma livraria, abrangendo informações sobre clientes, livros, editoras, pedidos de compra e controle de estoque. Inclui os passos realizados desde a entrevista com o cliente até a execução dos scripts SQL no banco de dados.

O objetivo é criar os diagramas, os modelos em seus passos e deixa-lo pronto para inserção/carga dos dados .

## Entrevista com o Cliente

O cliente deseja coletar dados pessoais de clientes, incluindo informações para pessoa física (CPF e RG) ou pessoa jurídica (CNPJ e IE), além de nome, endereço, telefone e e-mail.

O produto principal são livros, com informações como título, categoria, ISBN, ano de publicação, valor, editora e autor(a).

Editoras fornecem livros, com detalhes de contato como telefone, nome de contato, e-mail e até 2 telefones.

## Passos da Modelagem de Dados

1. ### Entrevista com o Cliente 
Entrevista com o cliente para entender os requisitos do sistema. Os principais pontos levantados foram:

- Coleta de dados pessoais dos clientes: Nome, endereço, telefone e e-mail.
- Diferenciação entre pessoa física (CPF e RG) e pessoa jurídica (CNPJ e IE).
- Produtos principais: Livros. Informações associadas como título, categoria, ISBN, ano de publicação, valor, editora e autor.
- Editoras: Telefone, nome de contato, e-mail e até 2 números de telefone.
- Exclusividade de livro por editora.
- Processo de compra: Verificação de estoque antes de processar a compra.
2. ### Criação do Mini Mundo
Com base nas informações da entrevista, um mini mundo que representa as entidades e seus relacionamentos:

- Cliente (Pessoa Física ou Jurídica)
- Livro (Título, Categoria, ISBN, Ano de Publicação, Valor)
- Editora (Telefone, Nome de Contato, E-mail)
- Pedido de Compra
- Estoque
3. ### Modelo Conceitual
A partir do mini mundo, um modelo conceitual usando diagramas de entidade-relacionamento (ER), identificando as entidades, atributos e relacionamentos entre eles.

Exemplo de entidades:

- Cliente (ID, Nome, Endereço, Telefone, E-mail)
- Livro (ID, Título, Categoria, ISBN, Ano de Publicação, Valor)
- Editora (ID, Nome de Contato, Telefone, E-mail)
- Pedido (ID, Dados, Cliente_ID)
- ItemPedido (ID, Pedido_ID, Livro_ID, Quantidade)
4. ### Modelo Lógico
A partir do modelo conceitual, um modelo lógico, que envolve a transformação das entidades, atributos e relacionamentos em tabelas de um banco de dados relacional.

Exemplo de tabelas:

- Cliente (ID, Nome, Endereço, Telefone, E-mail, Tipo, CPF, RG, CNPJ, IE)
- Livro (ID, Título, Categoria, ISBN, Ano de Publicação, Valor, Editora_ID)
- Editora (ID, Nome de Contato, Telefone, E-mail)
- Pedido (ID, Dados, Cliente_ID)
- ItemPedido (ID, Pedido_ID, Livro_ID, Quantidade)
5. ### Modelo Físico
Com base no modelo lógico, criado o modelo físico do banco de dados, definindo os tipos de dados, chaves primárias, chaves estrangeiras e relacionamentos.

Exemplo de tabelas com tipos de dados:

- Cliente (ID INT PRIMARY KEY, Nome VARCHAR, Endereço VARCHAR, Telefone VARCHAR,  E-mail VARCHAR, Tipo VARCHAR, CPF VARCHAR, RG VARCHAR, CNPJ VARCHAR, IE VARCHAR)
- Livro (ID INT PRIMARY KEY, Título VARCHAR, Categoria VARCHAR, ISBN VARCHAR, Ano  INT, Valor DECIMAL, Editora_ID INT)
- Editora (ID INT PRIMARY KEY, NomeContato VARCHAR, Telefone VARCHAR, E-mail VARCHAR)
- Pedido (ID INT PRIMARY KEY, Data DATE, Cliente_ID INT)
- ItemPedido (ID INT PRIMARY KEY, Pedido_ID INT, Livro_ID INT, Quantidade INT)

6. ### Implementação no Banco de Dados:
   - As instruções SQL foram usadas para criar as tabelas, definir as chaves e estabelecer relacionamentos no banco de dados.



## Arquivos Incluídos

- `script.sql`: Contém os comandos SQL para criar as tabelas, definir as chaves e estabelecer relacionamentos.

- `diagrama_mer.png`: Diagrama do modelo ER representando as entidades, atributos e relacionamentos.

Este projeto de modelagem de dados para a livraria foi realizado utilizando as ferramentas BrModelo para os modelos conceituais e lógicos, SQLPowerArchitect para o modelo físico e, por fim, o SQL Server para a execução dos scripts SQL.



 
