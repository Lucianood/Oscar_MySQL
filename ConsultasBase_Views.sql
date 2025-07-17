-- Filmes e seus premios 

CREATE VIEW Filmes_Premios AS
SELECT 
    filme.Titulo,
    premiacao.ID_Filme,
    premiacao.Ano,
    premio.Descricao_Premio
FROM
    filme
LEFT JOIN premiacao ON filme.ID_Filme = premiacao.ID_Filme
LEFT JOIN premio ON premiacao.ID_Premio = premio.ID_Premio;


-- Filmes mais vencedores 

CREATE VIEW Filmes_Vencedores AS
SELECT 
    filme.Titulo, 
    COUNT(premiacao.ID_Premio) AS Total_Premios
FROM
    filme
LEFT JOIN premiacao ON filme.ID_Filme = premiacao.ID_Filme
GROUP BY filme.Titulo
ORDER BY Total_Premios DESC;
    
    -- Atores e seus premios
    
CREATE VIEW Atores_Premios AS
SELECT
    Nome_Ator,
    premiacao.Ano,
    premio.Descricao_Premio
FROM
    ator
LEFT JOIN participacao ON ator.ID_Ator = participacao.ID_Ator
LEFT JOIN premiacao ON participacao.ID_Filme = premiacao.ID_Filme
LEFT JOIN premio on premiacao.ID_Premio = premio.ID_Premio;


-- Atores mais vencedores 

CREATE VIEW Atores_Vencedores AS
SELECT
	ator.Nome_Ator,
    count(premiacao.ID_Premio) as Total_Premios
FROM
		ator
LEFT JOIN participacao on ator.ID_Ator = participacao.ID_Ator
LEFT JOIN premiacao on participacao.ID_Filme = premiacao.ID_Filme
GROUP BY ator.Nome_Ator
ORDER BY Total_Premios desc;


    
    