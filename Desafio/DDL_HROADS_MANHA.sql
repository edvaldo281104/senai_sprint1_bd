USE HROADS;

CREATE TABLE TipoHabilidade
(
	idTipo	INT PRIMARY KEY IDENTITY
	,Nome	VARCHAR (200)
);

CREATE TABLE Habilidade
(
	idHabilidade	INT PRIMARY KEY IDENTITY
	,idTipo			INT FOREIGN KEY REFERENCES TipoHabilidade (idTipo)
	,Nome			VARCHAR (200)
);


CREATE TABLE Classes
(
	idCLasse	INT PRIMARY KEY IDENTITY
	,idHabilidade  INT FOREIGN KEY REFERENCES Habilidade (idHabilidade)
	,Nome		VARCHAR (200)
);

CREATE TABLE Personagem
(
	idPersonagem	INT PRIMARY KEY IDENTITY
	,idClasse		INT FOREIGN KEY REFERENCES Classes (idClasse)
	,Nome			VARCHAR (200) NOT NULL
	,Vida			VARCHAR (200)
	,Mana			VARCHAR (200)
	,Atualização	DATETIME 
	,Criação		DATETIME
);
