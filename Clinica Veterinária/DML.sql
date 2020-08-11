USE ClinicaVeterinaria 

-- DML

INSERT INTO TipoPet (Descricao) VALUES 
	('Cachorro'),
	('Gato'),
	('Passaro')

INSERT INTO Raca (Descricao, IdTipoPet) VALUES
	('Husky', 1),
	('Siamês', 2),
	('Papagaio', 3)

INSERT INTO Pet (Nome, DataNascimento, IdRaca, IdDono) VALUES
	('Jones', '2015-05-06', 1, 3),
	('Charlie', '2016-04-04', 2, 2),
	('Tagarela', '2013-02-10', 3, 1)

INSERT INTO Dono (Nome) VALUES
	('João'),
	('Carlos'),
	('Paulo')
