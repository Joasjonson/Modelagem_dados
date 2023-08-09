
CREATE DATABASE BOOK_COMPANY
USE BOOK_COMPANY


CREATE TABLE Tb_editora (
                ID_editora VARCHAR(10) NOT NULL,
                telefone1 VARCHAR(15) NOT NULL,
                telefone2 VARCHAR(15),
                email VARCHAR(30) NOT NULL,
                nome_contato VARCHAR(40) NOT NULL,
                CONSTRAINT Tb_editora_pk PRIMARY KEY (ID_editora)
)

CREATE TABLE Tb_livro (
                ID_livro VARCHAR(20) NOT NULL,
                titulo VARCHAR(40) NOT NULL,
                nome_livro VARCHAR(40) NOT NULL,
                categoria VARCHAR(30) NOT NULL,
                autor VARCHAR(30) NOT NULL,
                valor FLOAT NOT NULL,
                ano_publicacao INT NOT NULL,
                isbn INT NOT NULL,
                ID_editora VARCHAR(10) NOT NULL,
                CONSTRAINT Tb_LIVRO_pk PRIMARY KEY (ID_livro)
)

CREATE TABLE Tb_estoque (
                ID_livro VARCHAR(20) NOT NULL,
                qtd_estoque INT NOT NULL,
                CONSTRAINT Tb_estoque_pk PRIMARY KEY (ID_livro)
)

CREATE TABLE Tb_cliente (
                ID_cliente VARCHAR(20) NOT NULL,
                nome VARCHAR(60) NOT NULL,
                telefone1 VARCHAR(15),
                telefone2 VARCHAR(15) NOT NULL,
                email VARCHAR(40) NOT NULL,
                rua VARCHAR(50) NOT NULL,
                bairro VARCHAR(20) NOT NULL,
                cidade VARCHAR(30) NOT NULL,
                estado VARCHAR(20) NOT NULL,
                CONSTRAINT Tb_CLIENTE_pk PRIMARY KEY (ID_cliente)
)

-- Comment for table [Tb_CLIENTE]: Tabela referente a entidade Cliente.


CREATE TABLE Tb_pj (
                ID_cliente VARCHAR(20) NOT NULL,
                cnpj VARCHAR(30) NOT NULL,
                ie VARCHAR(30) NOT NULL,
                CONSTRAINT Tb_PJ_pk PRIMARY KEY (ID_cliente)
)

CREATE TABLE Tb_pf (
                ID_cliente VARCHAR(20) NOT NULL,
                cpf VARCHAR(14) NOT NULL,
                rg VARCHAR(15) NOT NULL,
                CONSTRAINT Tb_PF_pk PRIMARY KEY (ID_cliente)
)

CREATE TABLE Tb_pedido (
                id_pedido VARCHAR(20) NOT NULL,
                data DATETIME NOT NULL,
                valor_pedido FLOAT NOT NULL,
                ID_cliente VARCHAR(20) NOT NULL,
                CONSTRAINT Tb_PEDIDO_pk PRIMARY KEY (id_pedido)
)

CREATE TABLE Tb_item_pedido (
                id_pedido VARCHAR(20) NOT NULL,
                ID_livro VARCHAR(20) NOT NULL,
                qtd_pedido INT NOT NULL,
                valor_item DECIMAL NOT NULL,
                CONSTRAINT Tb_ITEM_PEDIDO_pk PRIMARY KEY (id_pedido, ID_livro)
)

ALTER TABLE Tb_livro ADD CONSTRAINT Tb_editora_Tb_LIVRO_fk
FOREIGN KEY (ID_editora)
REFERENCES Tb_editora (ID_editora)
ON DELETE NO ACTION
ON UPDATE NO ACTION

ALTER TABLE Tb_item_pedido ADD CONSTRAINT Tb_LIVRO_Tb_ITEM_PEDIDO_fk
FOREIGN KEY (ID_livro)
REFERENCES Tb_LIVRO (ID_livro)
ON DELETE NO ACTION
ON UPDATE NO ACTION

ALTER TABLE Tb_estoque ADD CONSTRAINT Tb_LIVRO_Tb_estoque_fk
FOREIGN KEY (ID_livro)
REFERENCES Tb_livro (ID_livro)
ON DELETE NO ACTION
ON UPDATE NO ACTION

ALTER TABLE Tb_pedido ADD CONSTRAINT Tb_CLIENTE_Tb_PEDIDO_fk
FOREIGN KEY (ID_cliente)
REFERENCES Tb_CLIENTE (ID_cliente)
ON DELETE NO ACTION
ON UPDATE NO ACTION

ALTER TABLE Tb_PF ADD CONSTRAINT Tb_CLIENTE_Tb_PF_fk
FOREIGN KEY (ID_cliente)
REFERENCES Tb_CLIENTE (ID_cliente)
ON DELETE NO ACTION
ON UPDATE NO ACTION

ALTER TABLE Tb_PJ ADD CONSTRAINT Tb_CLIENTE_Tb_PJ_fk
FOREIGN KEY (ID_cliente)
REFERENCES Tb_CLIENTE (ID_cliente)
ON DELETE NO ACTION
ON UPDATE NO ACTION

ALTER TABLE Tb_ITEM_PEDIDO ADD CONSTRAINT Tb_PEDIDO_Tb_ITEM_PEDIDO_fk
FOREIGN KEY (id_pedido)
REFERENCES Tb_PEDIDO (id_pedido)
ON DELETE NO ACTION
ON UPDATE NO ACTION