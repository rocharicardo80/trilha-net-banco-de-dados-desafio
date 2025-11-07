--1--

SELECT
Nome,
Ano
FROM Filmes

--2--

SELECT
Nome,
Ano,
Duracao
FROM Filmes
GROUP BY Nome,Ano,Duracao
ORDER BY Ano

--3--

SELECT * FROM Filmes WHERE Nome = 'De volta para o futuro'

--4--


SELECT * FROM Filmes WHERE Ano = '1997'


--5--

SELECT * FROM Filmes WHERE Ano > '2000'

--6--

SELECT *
FROM filmes
WHERE duracao > 100 AND duracao < 150
ORDER BY duracao ASC

--7--

SELECT ano, COUNT(*) AS quantidade_filmes
FROM filmes
GROUP BY ano
ORDER BY quantidade_filmes DESC

--8--

SELECT PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'M';

--9--

SELECT PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome;

--10--

SELECT 
    f.Nome AS Filme,
    STRING_AGG(g.Genero, ', ') AS Generos
FROM 
    Filmes AS f
INNER JOIN 
    FilmesGenero AS fg ON f.Id = fg.IdFilme
INNER JOIN 
    Generos AS g ON fg.IdGenero = g.Id
GROUP BY 
    f.Nome
ORDER BY 
    f.Nome;

    --11--

    SELECT 
    f.Nome AS Filme,
    g.Genero AS Genero
FROM 
    Filmes AS f
INNER JOIN 
    FilmesGenero AS fg ON f.Id = fg.IdFilme
INNER JOIN 
    Generos AS g ON fg.IdGenero = g.Id
WHERE 
    g.Genero = 'Mistério'
ORDER BY 
    f.Nome;

    --12--

    SELECT 
    f.Nome AS Filme,
    a.PrimeiroNome,
    a.UltimoNome,
    ef.Papel
FROM 
    Filmes AS f
INNER JOIN 
    ElencoFilme AS ef ON f.Id = ef.IdFilme
INNER JOIN 
    Atores AS a ON ef.IdAtor = a.Id
ORDER BY 
    f.Nome, a.PrimeiroNome;




































































