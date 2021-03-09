USE Filmes;


		-- Tabela, COLUNA
INSERT INTO Generos (Nome)
VALUES				('Ação')
					,('Aventura');

-- VAMOS CADASTRAR OS FILMES

INSERT INTO Filmes  (Titulo, idGenero)
VALUES				('Rambo', 1)
					,('Tropa de Elite', 1)
					,('Rei Leão', 2);