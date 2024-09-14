# Trazer nome e ano dos filmes
SELECT Nome, Ano from Filmes;

# Retornar nome e ano dos filmes ordenados pelo ano, em ordem crescente
SELECT Nome, Ano from Filmes ORDER BY Ano ASC;

# Retornar o filme De Volta para o Futuro
SELECT Nome, Ano, Duracao from Filmes WHERE Nome = 'De Volta para o Futuro';

# Retornar filmes de 1997
SELECT Nome, Ano, Duracao from Filmes WHERE Ano = 1997;

# Filmes apos anos '2000';
SELECT Nome, Ano, Duracao from Filmes WHERE Ano > 2000;

# Filmes com duração maior que 100 e menor que 150 em ordem crescente de duração;
SELECT Nome, Ano, Duracao from Filmes WHERE Duracao > 100 and Duracao < 150	ORDER BY Duracao ASC;

# Filmes lançados por ano, agrupados pelo ano e ordenados em ordem decrescente
SELECT Ano, Count(*) Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC;

# Selecionar primeiro e último nome de atores do sexo masculino;
SELECT PrimeiroNome, UltimoNome from Atores WHERE Genero = 'M';

# Selecionar primeiro e último nome de atores do sexo feminino ordenadas pelo primeiro nome;
SELECT PrimeiroNome, UltimoNome from Atores WHERE Genero = 'F' ORDER BY PrimeiroNome;

# Selecionar primeiro e último nome de atores do sexo masculino;
SELECT * FROM FilmesGenero;
SELECT * FROM Generos;

# Buscar nome e genero do filme;
SELECT f.Nome AS nome_filme, g.Genero AS nome_genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.id = fg.idFilme
INNER JOIN Generos g ON g.id = fg.idGenero;


# Nome e genero onde o genero é mistério;
SELECT f.Nome AS nome_filme, g.Genero AS nome_genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.id = fg.idFilme
INNER JOIN Generos g ON g.id = fg.idGenero
WHERE g.Genero = 'Mistério';


# Selecionar nome do filme, seu ator e papel;
SELECT f.Nome, a.PrimeiroNome, a.UltimoNome, ElencoFilme.Papel
FROM Filmes f
INNER JOIN ElencoFilme ON f.id = ElencoFilme.idFilme
INNER JOIN Atores a ON a.id = ElencoFilme.idAtor

