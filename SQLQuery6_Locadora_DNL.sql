USE Empresas;

INSERT INTO Empresa (Nome)
VALUES				('Ford')
					,('Fiat')
					,('Volkswagen');

INSERT INTO Veiculos (Marca, Modelo, Placa)
VALUES				('Toyota', 'Corolla', '0A9-7AB')
					,('Ford','Mustang','I76-8OJ')
					,('Nissan','Kicks','09C-M65');

INSERT INTO Cliente (Nome, CPF, idVeiculos)
VALUES				('Paulo',87634826302, 1)
					,('Cesar', 09736462312, 2)
					,('Everaldo', 09364632632, 3);