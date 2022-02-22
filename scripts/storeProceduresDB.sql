/* -------------------------------------------------------------------------- */
/*                                  LOAD DATA                                 */
/* -------------------------------------------------------------------------- */
-- source creationDB.sql

USE creditos;

/* -------------------------------------------------------------------------- */
/*                              STORE PROCEDURES                              */
/* -------------------------------------------------------------------------- */
-- Tipos:
-- Almacenamiento básico
-- Almacenamiento con parámetro(s) de entrada
-- Almacenamiento con parámetro(s) de salida
-- Almacenamiento con parámetro(s) de entrada y salida

-- SINTAXIS
-- DELIMITER
-- CREATE PROCEDURE `nombre_del_sp` (IN param_in1 CHAR(40), OUT param_out1 INTEGER)
-- BEGIN
--     SET @var = 'id';
--     SELECT * FROM tbl WHERE var1 LIKE param_in1;
--     SELECT COUNT(*) INTO param_out1 FROM tbl
--     WHERE var2 = TRUE;
--     ...
--     /* ------------------------------ Condicionales ----------------------------- */
--     IF condition=1 THEN
--         SELECT * FROM ...
--     END IF;
--     ...
-- END

/* ------ PROCEDIMIENTO PARA CONTAR LOS CLIENTES CON UN TIPO DE GENERO ------ */
DELIMITER //
CREATE PROCEDURE SP_CONTAR_GENERO(IN PARAM INT)
BEGIN
    SELECT * 
    FROM cliente 
    WHERE GENERO = PARAM;
END//
DELIMITER ;

CALL SP_CONTAR_GENERO(1);


/* -------------- PROCEDIMIENTO QUE CALCULA LA SUMA DEL SALARIO ------------- */
DELIMITER //
CREATE PROCEDURE SP_SUMA_SALARIO(OUT PARAM INT)
BEGIN
    SELECT AVG(SALARIO) INTO PARAM
    FROM cliente;
END//
DELIMITER ;

CALL SP_SUMA_SALARIO(@PARAM);
SELECT @PARAM;

/* ------------------ PROCEDIMIENTO QUE SUMA DOS PARAMETROS ----------------- */
DELIMITER //
CREATE PROCEDURE SP_PROCEDIMIENTO(INOUT PARAM1 INT, IN PARAM2 INT)
BEGIN
    SET PARAM1 = PARAM1 + PARAM2;
    SELECT AVG(SALARIO) INTO PARAM
    FROM cliente;
END//
DELIMITER ;

SET @PARAM1 = 10; -- Parametros que son de entrada y salida
CALL SP_PROCEDIMIENTO(@PARAM1, 4);
SELECT @PARAM1; -- Parametro de salida

/* ---------------------- PROCEDIMIENTO DE ORDENAMIENTO --------------------- */
DELIMITER //
DROP PROCEDURE IF EXISTS SP_ORDENA//
CREATE PROCEDURE SP_ORDENA(INOUT PARAM_ORD VARCHAR(35), INOUT PARAM_ASC_DESC VARCHAR(35))
BEGIN
    SET @QUERY = CONCAT('SELECT * FROM credito ORDER BY ', PARAM_ORD, ' ', PARAM_ASC_DESC);
    PREPARE QUERY_ORDER FROM @QUERY;
    EXECUTE QUERY_ORDER;
    DEALLOCATE PREPARE QUERY_ORDER;
END//
DELIMITER ;

SET @PARAM_ORD = 'SALDO';
SET @PARAM_ASC_DESC = 'ASC';
CALL SP_ORDENA(@PARAM_ORD, @PARAM_ASC_DESC);

/* ---- PROCEDIMIENTO PARA AGREGAR REGISTROS AL CATALOGO DE INSTITUCIONES --- */
DELIMITER //
CREATE PROCEDURE SP_ADD_INSTI(IN INSTI VARCHAR(6), IN NOM VARCHAR(25))
BEGIN
    INSERT INTO INSTITUCION (INSTITUCION, NOMBRE)
    VALUES (INSTI, NOM);
END //
DELIMITER ;

CALL SP_ADD_INSTI('40133', 'ACTINVER');


