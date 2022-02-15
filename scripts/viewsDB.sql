/* -------------------------------------------------------------------------- */
/*                                  LOAD DATA                                 */
/* -------------------------------------------------------------------------- */
source creationDB.sql

/* -------------------------------------------------------------------------- */
/*                                    VIEWS                                   */
/* -------------------------------------------------------------------------- */

-- Vista de los creditos del banco 40012
CREATE VIEW Bancomer AS 
SELECT *
FROM credito
WHERE INSTITUCION = "40012";

SELECT * FROM Bancomer LIMIT 10;

-- Vista de la informacion de los clientes del banco 40012
CREATE VIEW BancomerClientes AS 
SELECT credito.INSTITUCION, credito.SALDO, cliente.FOLIO_CLIENTE, cliente.EDAD, cliente.SALARIO
FROM credito
INNER JOIN cliente ON credito.INSTITUCION=cliente.INSTITUCION AND credito.FOLIO_CLIENTE=cliente.FOLIO_CLIENTE
WHERE credito.INSTITUCION='40012';

SELECT * FROM BancomerClientes LIMIT 10;

-- Vista de los clientes por genero y banco


-- Vista de los salarios promedios por banco


-- Vista de pagos realizados promedio por banco