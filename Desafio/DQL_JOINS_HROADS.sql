
-- Selecionar todos os tipos de habilidades
SELECT * FROM TipoHabilidade;

-- Selecionar todas as habilidades
-- Habilidades cadastradas = 4
SELECT * FROM Habilidade;

-- Selecionar somente os id's das habilidades
SELECT idHabilidade FROM Habilidade;


-- Selecionar todas as classes
SELECT * FROM Classes;

--Selecionar somente o nome das classes
SELECT Nome FROM Classes;


--  SELECIONANDO TODOS OS PERSONAGENS
SELECT * FROM Personagem;


--JOINS
-- Selecionar todas as habilidades e quais tipos de habilidades elas fazem parte
SELECT idHabilidade, Habilidade.Nome, TipoHabilidade.Nome  FROM Habilidade
INNER JOIN TipoHabilidade
ON Habilidade.idTipo = TipoHabilidade.idTipo;

-- Selecionar todos os personagens e suas respectivas classes 
SELECT idPersonagem, Personagem.Nome, Classes.Nome FROM Personagem
INNER JOIN Classes
ON Personagem.idClasse = Classes.idCLasse;

-- selecionar todos os personagens e as classes (mesmo que não tenha correspondencia em personagem)
SELECT idPersonagem, Personagem.Nome, Classes.Nome FROM Personagem
RIGHT JOIN Classes
ON Personagem.idClasse = Classes.idClasse

--Selecionar todas as classes e suas respectivas habilidades
SELECT idClasse, Classes.Nome, Habilidade.Nome FROM Classes
RIGHT JOIN Habilidade
ON Classes.idHabilidade = Habilidade.idHabilidade;


--Selecionar todas as habilidades e suas classes (somente com correspondencias)
SELECT Habilidade.Nome, Classes.Nome FROM Habilidade
INNER JOIN Classes
ON Habilidade.idHabilidade = Classes.idHabilidade;

--Selecionar todas as habilidades e suas classes (mesmo que nao haja correspondencias)
SELECT Habilidade.idHabilidade, Habilidade.Nome, Classes.Nome FROM Habilidade
RIGHT JOIN Classes
ON Habilidade.idHabilidade = Classes.idHabilidade
