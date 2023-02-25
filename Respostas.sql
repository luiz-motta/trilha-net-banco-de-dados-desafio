-- 1

SELECT 
	Nome,
	Ano
FROM Filmes

-- 2

SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
ORDER BY Ano ASC

-- 3

SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

-- 4

SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano = '1997'

-- 5

SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano > '2000'

-- 6

SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Duracao > '100' AND Duracao < '150'
ORDER BY Duracao ASC

-- 7

SELECT
	Ano,
	COUNT('Ano') Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- 8

SELECT
	*
FROM Atores
WHERE Genero = 'M'

-- 9

SELECT
	*
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- 10

SELECT
	F.Nome,
	G.Genero
FROM Filmes AS F
INNER JOIN FilmesGenero AS FG
ON FG.idFilme = F.id
INNER JOIN Generos AS G
ON G.id = FG.idGenero

-- 11

SELECT 
	F.Nome,
	G.Genero
FROM Filmes AS F
INNER JOIN FilmesGenero AS FG
ON FG.IdFilme = F.id
INNER JOIN Generos AS G
ON G.id = FG.idGenero
WHERE Genero = 'Mistério'

-- 12

SELECT
	F.Nome,
	A.PrimeiroNome,
	A.UltimoNome,
	EF.Papel
FROM Filmes AS F
INNER JOIN ElencoFilme AS EF
ON EF.IdFilme = F.Id
INNER JOIN Atores AS A
ON A.Id = EF.IdAtor