/* -------------------------------------------------------------------------- */
/*                                  LOAD DATA                                 */
/* -------------------------------------------------------------------------- */
-- source creationDB.sql

USE creditos;

/* -------------------------------------------------------------------------- */
/*                                    VIEWS                                   */
/* -------------------------------------------------------------------------- */

-- Vista de los creditos del banco 40012
CREATE VIEW Bancomer_vw AS 
SELECT *
FROM credito
WHERE INSTITUCION = "40012";

SELECT * FROM Bancomer_vw LIMIT 10;

-- Vista de la informacion de los clientes del banco 40012
CREATE VIEW BancomerClientes_vw AS 
SELECT credito.INSTITUCION, credito.SALDO, cliente.FOLIO_CLIENTE, cliente.EDAD, cliente.SALARIO
FROM credito
INNER JOIN cliente ON credito.INSTITUCION=cliente.INSTITUCION AND credito.FOLIO_CLIENTE=cliente.FOLIO_CLIENTE
WHERE credito.INSTITUCION='40012';

SELECT * FROM BancomerClientes_vw LIMIT 10;

-- Vista de los clientes por genero y banco
CREATE VIEW Genero_vw AS
SELECT credito.INSTITUCION As Institucion, cliente.GENERO AS Genero, COUNT(Genero)
FROM credito LEFT JOIN cliente
ON credito.INSTITUCION=cliente.INSTITUCION AND credito.FOLIO_CLIENTE=cliente.FOLIO_CLIENTE
GROUP BY Genero, Institucion;

SELECT * FROM Genero_vw LIMIT 10;

-- Vista de los salarios promedios por banco
CREATE VIEW AvgSalario_vw AS
SELECT INSTITUCION, AVG(SALDO) AS SALDO_AVG
FROM credito
GROUP BY INSTITUCION;

SELECT * FROM AvgSalario_vw LIMIT 10;


-- Vista de pagos realizados promedio por banco y tipo de empleo
CREATE VIEW AvgPago_vw AS
SELECT credito.INSTITUCION As Institucion, cliente.EMPLEO AS Empleo, AVG(credito.PAGO_REALIZADO) AS AVG_PAGO 
FROM credito LEFT JOIN cliente
ON credito.INSTITUCION=cliente.INSTITUCION AND credito.FOLIO_CLIENTE=cliente.FOLIO_CLIENTE
GROUP BY Institucion, Empleo;

SELECT * FROM AvgPago_vw LIMIT 10;


