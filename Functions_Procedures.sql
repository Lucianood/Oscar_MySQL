-- Procedure Inserir Novo Filme

DELIMITER //

CREATE PROCEDURE Inserir_Filme (
    IN ID_Filme INT,
    IN Titulo VARCHAR(100),
    IN ID_Diretor INT
)
BEGIN
    INSERT INTO filme (ID_Filme, Titulo, ID_Diretor)
    VALUES (ID_Filme, Titulo, ID_Diretor);
END;
//

DELIMITER ;

SELECT * FROM filme;
SELECT * FROM diretor;



-- Imputar dados a serem cadastrados na ordem: (ID_Filme, 'Titulo do Filme', ID_Diretor)


CALL Inserir_Filme (32 ,'Transformers O Inicio', 23);




-- Function Total Premios de um Filme

DELIMITER //

CREATE FUNCTION TotalPremiosFilme (Total_Premios INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE Total INT;

    SELECT COUNT(*)
    INTO Total
    FROM premiacao
    WHERE ID_Filme = Total_Premios;

    RETURN Total;
END;
//

DELIMITER ;

SELECT * FROM filme;

-- Imputar ID_Filme desejado no parênteses



SELECT TotalPremiosFilme(4);
