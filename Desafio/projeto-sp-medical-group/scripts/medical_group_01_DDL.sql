CREATE DATABASE Medical_group;
USE Medical_group;
CREATE TABLE tipoUsuario
(
	idTipoUsuario	INT PRIMARY KEY IDENTITY
	,tipoUsuario	VARCHAR(100) NOT NULL
);
SELECT*FROM tipoUsuario;

CREATE TABLE especialidade
(
	idEspecialidade	INT PRIMARY KEY IDENTITY
	,especialidade	VARCHAR(100) NOT NULL
);
SELECT *FROM especialidade;


CREATE TABLE clinica
(
	idClinica	INT PRIMARY KEY IDENTITY
	,nomeFantasia	VARCHAR(200) NOT NULL
	,cnpj			CHAR(14) UNIQUE NOT NULL
	,razaoSocial	VARCHAR(200)UNIQUE NOT NULL
	,endereco		VARCHAR(200)UNIQUE NOT NULL
	,dias           VARCHAR(100) NOT NULL
	,horariosAbertura	TIME NOT NULL
	,horariosFechamento	TIME NOT NULL
);
SELECT *FROM clinica;

CREATE TABLE usuario
(
	idUsuario	INT PRIMARY KEY IDENTITY
	,idTipoUsuario	INT FOREIGN KEY	REFERENCES tipoUsuario(idTipoUsuario)
	,nome	VARCHAR(200) NOT NULL
	,email	VARCHAR(150) UNIQUE NOT NULL
);
SELECT *FROM usuario;

CREATE TABLE medico
(
	idMedico INT PRIMARY KEY IDENTITY
	,idClinica INT FOREIGN KEY REFERENCES clinica(idClinica)
	,idEspecialidade INT FOREIGN KEY REFERENCES especialidade(idEspecialidade)
	,idUsuario   INT FOREIGN KEY REFERENCES usuario(idUsuario)
	,crm  VARCHAR (20) UNIQUE NOT NULL
);
SELECT*FROM medico

CREATE TABLE paciente
(
	idPaciente INT PRIMARY KEY IDENTITY
	,idUsuario INT FOREIGN KEY REFERENCES usuario(idUsuario)
	,dataNascimento	DATE NOT NULL
	,telefone	VARCHAR(50)
	,rg CHAR(20)UNIQUE NOT NULL
	,cpf CHAR(20)UNIQUE NOT NULL
	,endereco VARCHAR (200) NOT NULL
);	
SELECT*FROM paciente;

CREATE TABLE consulta
(
	idConsulta INT PRIMARY KEY IDENTITY
	,idMedico INT FOREIGN KEY REFERENCES medico(idMedico)
	,idPaciente INT FOREIGN KEY REFERENCES paciente(idPaciente)
	,dataConsulta DATETIME NOT NULL
	,situacao   VARCHAR (50) NOT NULL
);
SELECT *FROM consulta