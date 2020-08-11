USE Optus

-- Busca por tabela
SELECT * FROM Estilo
SELECT * FROM EstiloAlbum
SELECT * FROM Album
SELECT * FROM Artista

-- Busca por data específica 
SELECT * FROM Album WHERE DataLancamento BETWEEN '2018-12-30' AND '2019-12-30'

-- Busca por valor específico
SELECT * FROM Artista WHERE IdArtista > 2 AND IdArtista < 3

-- Ordem Crescente
SELECT * FROM Artista ORDER BY Nome

-- Ordem Decrescente
SELECT * FROM Artista ORDER BY Nome DESC

-- Busca por descrição específica
SELECT * FROM Album WHERE Nome = 'TESTING'

-- JOINS 

SELECT
	Artista.Nome,
	Album.Nome
FROM Artista
	RIGHT JOIN Album ON Artista.IdArtista = Album.IdArtista