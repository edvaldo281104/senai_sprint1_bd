USE HROADS;

INSERT INTO TipoHabilidade (Nome)
VALUES					('Ataque')
						,('Defesa')
						,('Cura')
						,('Magia')
						,('null');
						

INSERT INTO Habilidade  (Nome, idTipo)
VALUES				('Lança Mortal', 1)
					,('Escudo Supremo', 2)
					,('Recuperar vida', 3)
					,('Começa sem habilidade', 4);

INSERT INTO Classes		(Nome, idHabilidade)
VALUES					('Barbaro', 1)
						,('Cruzado', 2)
						,('Caçadora de Demonios', 1)
						,('Monge', 3)
						,('Necromante',4)
						,('Feiticeiro', 3)
						,('Arcanista', 4)

INSERT INTO Personagem		(Nome, idClasse, Vida, Mana, Atualização, Criação)
VALUES						('Deubug', 1, 100, 80 , 09/10/2020, 10/01/2010)
							,('BitBug', 4, 70, 100, 08/01/2020, 11/02/2012)
							,('Fer8', 7, 75, 60, 06/08/2021, 15/10/2015)

-- TROCANDO O NOME DE Fer8 para Fer7

UPDATE Personagem
SET Nome = 'Fer7'
WHERE idPersonagem = 3;

-- Atualizando o nome da Classe Necromante para Necromancer

UPDATE Classes
SET Nome = 'Necromancer'
WHERE idClasse = 5;