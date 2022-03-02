/* -------------------------------------------------------------------------- */
/*                                  LOAD DATA                                 */
/* -------------------------------------------------------------------------- */
-- source creationDB.sql

USE creditos;

/* -------------------------------------------------------------------------- */
/*                                  Triggers                                  */
/* -------------------------------------------------------------------------- */
/* ----- El trigger detecta tres de las operaciones DML más importantes: ---- */
/* ---- INSERT, UPDATE y DELETE, y cuando ocurren hacen algo al respecto ---- */
/* ------- El uso se puede establecer en dos momentos: BEFORE y AFTER ------- */

DROP TABLE IF EXISTS AUDITORIA;
CREATE TABLE AUDITORIA(
    ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ACTION_REAL VARCHAR(255),
    OLD_VAL VARCHAR(255),
    NEW_VAL  VARCHAR(255),
    USER  VARCHAR(255),
    DATE_MOD DATETIME DEFAULT(CURDATE())
);


/* -------------------- Trigger cuando se tiene un update ------------------- */
/* --- Se guarda en la tabla de auditoria el tipo de movimeinto y usuario --- */

-- TRIGGER TRG_INSTITUCIONES: Trigger que sirvve para bitacorear cuando se actualizan
-- los datosm almacenando en la tabla de auditoría los folios y el usuario que realizó
-- la actualización
DELIMITER //
DROP TRIGGER IF EXISTS TRG_INSTITUCIONES//
CREATE TRIGGER TRG_INSTITUCIONES
AFTER UPDATE ON CREDITO
FOR EACH ROW
BEGIN
    INSERT INTO AUDITORIA(ACTION_REAL, OLD_VAL, NEW_VAL, USER)
    VALUES ('UPDATE',  OLD.FOLIO, NEW.FOLIO, CURRENT_USER);
END//
DELIMITER ;

-- Ejemplo:
UPDATE CREDITO
SET SALDO = 555, MONTO_EXIGIBLE = 0
WHERE INSTITUCION='40012' AND FOLIO = 'ABC1';

/* ------------------- Trigger cuando se tiene un insert ------------------- */
/* -- Se controla el saldo que se ingresa antes de que se inserte el valor -- */

-- TRG_CREDITOS_BEFORE: Trigger que en cada inserción de los datos si el valor del
-- saldo es mayor o menor a un umbral, lo topa a dicho umbral
DELIMITER //
DROP TRIGGER IF EXISTS TRG_CREDITOS_BEFORE//
CREATE TRIGGER TRG_CREDITOS_BEFORE
BEFORE INSERT ON CREDITO
FOR EACH ROW
BEGIN
    IF NEW.SALDO > 9999999 THEN
        SET NEW.SALDO = 9999999;
    ELSEIF NEW.SALDO < -999 THEN
        SET NEW.SALDO = -999;
    END IF;
END//
DELIMITER ;


/* ----------------------- Trigger después del insert ----------------------- */
/* --- Se guarda en la tabla de auditoria el tipo de movimeinto y usuario --- */

-- TRG_CREDITOS_AFTER: Trigger que bitacorea las inserciones a las tablas guardando 
-- en la tabla de auditoría el usuario y folio integrado
DELIMITER //
DROP TRIGGER IF EXISTS TRG_CREDITOS_AFTER//
CREATE TRIGGER TRG_CREDITOS_AFTER
AFTER INSERT ON CREDITO
FOR EACH ROW
BEGIN
    INSERT INTO AUDITORIA(ACTION_REAL, OLD_VAL, NEW_VAL, USER)
    VALUES ('INSERT', '', NEW.FOLIO, CURRENT_USER);
END//
DELIMITER ;

-- Ejemplo:
INSERT INTO CREDITO(INSTITUCION, FOLIO, ID_PRODUCTO, FOLIO_CLIENTE, SALDO, ATRASOS, MONTO_EXIGIBLE, PAGO_REALIZADO, FECHA_INICIO)
VALUES
    ('40012', 'NOM1', 'PROD1', 'CLIE1', 99999999, 0, 100, 50, '2022/01/17'),
	('40012', 'NOM2', 'PROD2', 'CLIE1', -99999, 0, 100, 50, '2022/01/17');

























