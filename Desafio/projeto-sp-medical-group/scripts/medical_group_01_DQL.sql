--3. O administrador poderá cancelar o agendamento;
--Para cancelar o agendamento selecione o idConsulta da consulta a ser cancelada, exemplo a seguir:

UPDATE consulta
SET situacao ='Cancelada'
WHERE idConsulta ='1';
SELECT*FROM consulta;

--5. O médico poderá ver os agendamentos (consultas) associados a ele;
SELECT medico.idMedico,usuario.nome,consulta.idConsulta,consulta.idPaciente,consulta.dataConsulta FROM consulta
LEFT JOIN medico
ON consulta.idMedico=medico.idMedico
LEFT JOIN usuario
ON medico.idUsuario=usuario.idUsuario
WHERE consulta.idMedico LIKE '2';

--6. O médico poderá incluir a descrição da consulta que estará vinculada ao paciente (prontuário);
ALTER TABLE consulta ADD descricao VARCHAR(200);
SELECT*FROM consulta

UPDATE consulta
SET descricao='consulta de rotina'
WHERE idConsulta='2';

--7. O paciente poderá visualizar suas próprias consultas;
SELECT paciente.idPaciente,usuario.nome,consulta.idConsulta,consulta.dataConsulta FROM consulta
LEFT JOIN paciente
ON consulta.idPaciente=paciente.idPaciente
LEFT JOIN usuario
ON paciente.idUsuario=usuario.idUsuario
WHERE consulta.idPaciente LIKE '2';