SELECT * FROM Filmes

-- 1 - Buscar o Nome e Ano dos Filmes:
SELECT Nome, Ano FROM Filmes

-- 2 - Buscar o Nome e Ano dos Filmes, ordenados por Ordem Crescente pelo Ano:
SELECT Nome, Ano, Duracao FROM Filmes
ORDER BY Ano

-- 3 - Buscar pelo Filme 'De Volta para o Futuro', trazendo o Nome, Ano e a Duracao:
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

-- 4 - Buscar os Filmes Lancados em 1997:
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano = 1997

-- 5 - Buscar os Filmes Lancados APoS o ano 2000:
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano > 2000

-- 6 - Buscar os Filmes com a Duracao Maior que 100 e Menor que 150, ordenando pela Duracao em Ordem Crescente:
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

-- 7 - Buscar a Quantidade de Filmes Lancadas no Ano, agrupando por Ano, ordenando pela Duracao em Ordem Decrescente:
SELECT Ano, 
COUNT(*) QuantidadeFilmesLancadosNoAno 
FROM Filmes
GROUP BY Ano 
ORDER BY QuantidadeFilmesLancadosNoAno DESC

-- 8 - Buscar os Atores do Genero Masculino, retornando o PrimeiroNome, UltimoNome:
SELECT * FROM Atores
WHERE Genero = 'M'

-- 9 - Buscar os Atores do Genero Feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome:
SELECT * FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- 10 - Buscar o Nome do Filme e o Genero:
SELECT
Filmes.Nome, Generos.Genero
FROM FilmesGenero
INNER JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id

-- 11 - Buscar o Nome do Filme e o Genero do tipo 'Misterio'
SELECT
Filmes.Nome, Generos.Genero
FROM FilmesGenero
INNER JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Generos.Genero = 'Mist�rio'

-- 12 - Buscar o Nome do Filme e os Atores, trazendo o PrimeiroNome, UltimoNome e seu Papel:
SELECT 
Filmes.Nome, 
Atores.PrimeiroNome,
Atores.UltimoNome,
ElencoFilme.Papel 
FROM Filmes 
INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme 
INNER JOIN Atores ON Atores.Id = ElencoFilme.IdAtor
