/* -------------------------------------------------------------------------- */
/*                                  LOAD DATA                                 */
/* -------------------------------------------------------------------------- */
-- source creationDB.sql

USE creditos;

/* -------------------------------------------------------------------------- */
/*                                  FUNCTIONS                                 */
/* -------------------------------------------------------------------------- */

/* ---------------- Funcion que calcula el cubo de un numero ---------------- */
DELIMITER $$
CREATE FUNCTION Func_Cube
(
 Num INT
)
RETURNS INT 
DETERMINISTIC
BEGIN
    DECLARE TotalCube INT;
    SET TotalCube = Num * Num * Num;
    RETURN TotalCube; 
END$$
DELIMITER ;

SELECT Func_Cube(4);

/* -------------------------- Calcula años de deuda ------------------------- */
DELIMITER $$
CREATE FUNCTION Func_Years
(
 DateCredit DATE
)
RETURNS INT DETERMINISTIC
BEGIN
    DECLARE TodayDate DATE;
    SELECT CURRENT_DATE() INTO TodayDate;
    RETURN YEAR(TodayDate) - YEAR(DateCredit);
END$$
DELIMITER ;

SELECT FOLIO_CLIENTE, Func_Years(FECHA_INICIO) AS 'years' FROM credito;

/* ---------------- Determina si un cliente es mayor de edad ---------------- */
DELIMITER $$
CREATE FUNCTION Func_IsAdult
(
    Age INT
)
RETURNS CHARACTER(2) DETERMINISTIC
BEGIN
    RETURN IF(Age>18,"Si", "No");
END$$
DELIMITER ;

SELECT NOMBRE, EDAD, Func_IsAdult(EDAD) AS ADULT
FROM cliente;




