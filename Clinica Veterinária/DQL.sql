USE ClinicaVeterinaria

-- Busca por tabela
SELECT * FROM Pet
SELECT * FROM Raca
SELECT * FROM TipoPet

-- Busca por data específica 
SELECT * FROM Pet WHERE DataNascimento BETWEEN '2015-04-05' AND '2016-06-07'

-- Busca por valor específico
SELECT * FROM Pet WHERE IdRaca > 0 AND IdRaca < 3

-- Ordem Crescente
SELECT * FROM Pet ORDER BY Nome

-- Ordem Decrescente
SELECT * FROM Pet ORDER BY Nome DESC

-- Busca por descrição específica
SELECT * FROM Pet WHERE Nome = 'Charlie'

-- JOINS 

SELECT
	Dono.Nome,
	Pet.Nome,
	Raca.Descricao,
	TipoPet.Descricao
FROM Pet
	RIGHT JOIN Raca ON Pet.IdRaca = Raca.IdRaca
	LEFT JOIN Dono ON Dono.IdDono = Pet.IdDono
	INNER JOIN TipoPet ON Raca.IdTipoPet = TipoPet.IdTipoPet