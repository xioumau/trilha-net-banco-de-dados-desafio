-- 1
SELECT Nome, Ano FROM Filmes

-- 2
SELECT Nome, Ano FROM Filmes 
ORDER BY Ano

-- 3
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

-- 4
SELECT * FROM Filmes
WHERE Ano = 1997

-- 5
SELECT * FROM Filmes
WHERE Ano > 2000

-- 6
SELECT * FROM Filmes
WHERE Duracao > 100
OR Duracao < 150

-- 7
SELECT Ano, COUNT(*) Quantidade FROM Filmes
GROUP BY Ano
ORDER BY Duracao DESC

-- 8
SELECT PrimeiroNome, UltimoNome, Genero FROM Atores
WHERE Genero = 'M'

-- 9
SELECT PrimeiroNome, UltimoNome, Genero FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- 10
SELECT F.Nome, G.Genero FROM Filmes F
INNER JOIN FilmesGenero FG ON F.IdFilme = FG.IdFilme
INNER JOIN Genero G ON FG.IdGenero = G.IdGenero

-- 11
SELECT F.Nome, G.Genero FROM Filmes F
INNER JOIN FilmesGenero FG ON F.IdFilme = FG.IdFilme
INNER JOIN Genero G ON FG.IdGenero = G.IdGenero
WHERE G.Genero = 'Mistério'

-- 12
SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, A.Papel FROM Filmes F
INNER JOIN ElencoFilme EF ON F.IdFilme = EF.IdFilme
INNER JOIN Atores A ON EF.IdAtor = A.IdAtor
