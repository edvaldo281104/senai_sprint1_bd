INSERT INTO tipoUsuario(tipoUsuario)
VALUES	('Administrador')
,('Medico')
,('Paciente');

INSERT INTO especialidade(especialidade)
VALUES ('Anestesiologia')
,('Angiologia')
,('Acupuntura')
,('Cardiologia')
,('Cirurgia Cardiovascular')
,('Cirurgia da M�o')
,('Cirurgia do Aparelho Digestivo')
,('Cirurgia Geral')
,('Cirurgia Pedi�trica')
,('Cirurgia Pl�stica')
,('Cirurgia Tor�cica')
,('Cirurgia Vascular')
,('Dermatologia')
,('Radioterapia')
,('Urologia')
,('Pediatria')
,('Psiquiatria');

INSERT INTO clinica(nomeFantasia,cnpj,razaoSocial,endereco,dias,horariosAbertura,horariosFechamento)
VALUES	('Clinica Possarle','86400902000130','SP Medical Group','Av. Bar�o Limeira, 532, S�o Paulo, SP','Segunda a Sexta','08:00:00','17:00:00');


INSERT INTO usuario(idTipoUsuario,nome,email)
VALUES (1,'adm','adm@adm.com')
,(2,'Ricardo Lemos','ricardo.lemos@spmedicalgroup.com.br')
,(2,'Roberto Possarle','roberto.possarle@spmedicalgroup.com.br')
,(2,'Helena Strada','helena.souza@spmedicalgroup.com.br')
,(3,'Ligia','ligia@gmail.com')
,(3,'Alexandre','alexandre@gmail.com')
,(3,'Fernando','fernando@gmail.com')
,(3,'Henrique','henrique@gmail.com')
,(3,'Jo�o','joao@hotmail.com')
,(3,'Bruno','bruno@gmail.com')
,(3,'Mariana','mariana@outlook.com');

INSERT INTO medico(idClinica,idEspecialidade,idUsuario,crm)
VALUES (1,1,2,'54356-SP')
,(1,17,3,'53452-SP')
,(1,16,4,'65463-SP');

INSERT INTO paciente(idUsuario,dataNascimento,telefone,rg,cpf,endereco)
VALUES (5,'13-10-1983','11 3456-7654','435225435','94839859000','Rua Estado de Israel 240, S�o Paulo, Estado de S�o Paulo, 04022-000')
,(6,'23-07-2001','11 98765-6543','326543457','73556944057','Av. Paulista, 1578 - Bela Vista, S�o Paulo - SP, 01310-200')
,(7,'10-10-1978','11 97208-4453','546365253','16839338002','Av. Ibirapuera - Indian�polis, 2927,  S�o Paulo - SP, 04029-200')
,(8,'13-10-1985','11 3456-6543','543663625','14332654765','R. Vit�ria, 120 - Vila Sao Jorge, Barueri - SP, 06402-030')
,(9,'27-08-1975','11 7656-6377','325444441','91305348010','R. Ver. Geraldo de Camargo, 66 - Santa Luzia, Ribeir�o Pires - SP, 09405-380')
,(10,'21-03-1972','11 95436-8769','545662667','79799299004','Alameda dos Arapan�s, 945 - Indian�polis, S�o Paulo - SP, 04524-001')
,(11,'03-05-2018','','545662668','13771913039','R Sao Antonio, 232 - Vila Universal, Barueri - SP, 06407-140');


INSERT INTO consulta(idMedico,idPaciente,dataConsulta,situacao)
VALUES (3,7,'20/01/2020 15:00:00','Realizada')
,(2,2,'06/01/2020 10:00:00','Cancelada')
,(2,3,'07/02/2020 11:00:00','Realizada')
,(2,2,'06/02/2018 10:00:00','Realizada')
,(1,4,'07/02/2019 11:00:00','Cancelada')
,(3,7,'08/03/2020 15:00:00','Agendada')
,(1,4,'09/03/2020 11:00:00','Agendada');