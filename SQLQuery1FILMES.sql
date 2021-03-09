-- Cria um banco de dados chamado Filmes
CREATE DATABASE Filmes;

CREATE TABLE Generos
(
	--chave primaria = Ele não vai para uma tabela externa. É exclusiva, chave principal para se relacionar com outras
	idGenero	INT	PRIMARY	KEY IDENTITY
	,Nome		VARCHAR(250) NOT NULL 
	--Cadastrar um novo genero, nao pode omitir este campo, sempre colocar o NOME.
);

CREATE TABLE Filmes
(
	idFilme		INT	PRIMARY KEY IDENTITY
	,idGenero	INT FOREIGN KEY REFERENCES Generos (idGenero)
	,Titulo		VARCHAR (150) NOT NULL
);
