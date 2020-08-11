USE Optus

-- DML

INSERT INTO Estilo (Nome) VALUES 
	('MPB'),
	('Hip/Hop'),
	('Rap')

INSERT INTO Artista(Nome, IdEstilo) VALUES
	('Seu Jorge', 1),
	('A$AP Rocky', 2),
	('Drake', 3)

INSERT INTO Album(Nome, DataLancamento, Localizacao, QtdMinutos, IdArtista) VALUES
	('Musica para Churrasco (Vol. 1)', '2011-05-06', 'Brasil', '37', 1),
	('TESTING', '2018-03-01', 'Estados Unidos', '52', 2),
	('Care Package', '2019-08-01', 'Estados Unidos', '73', 3)

INSERT INTO EstiloAlbum(IdAlbum, IdEstilo) VALUES
	(1, 1),
	(2, 2),
	(3, 3)