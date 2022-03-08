/* -------------------------------------------------------------------------- */
/*                                  LOAD DATA                                 */
/* -------------------------------------------------------------------------- */
-- source creationDB.sql

/* -------------------------------------------------------------------------- */
/*                                     DCL                                    */
/* -------------------------------------------------------------------------- */

USE mysql;

/* --------------------------- Creacion de usuario -------------------------- */
CREATE USER 'usario1'@'hosting' IDENTIFIED BY 'PASS';

/* ------------------------- Modificación de usuario ------------------------ */
ALTER USER 'usario1'@'hosting' IDENTIFIED BY 'PASS123';

/* ---------------------------- Renombrar usuario --------------------------- */
RENAME USER 'usario1'@'hosting' TO 'usario2'@'hosting';

/* -------------------------- Cambio de contraseña -------------------------- */
SET PASSWORD FOR 'usario2'@'hosting' = 'PASS456';
UPDATE USER SET authentication_string = 'PASS4567' WHERE HOST = 'Hosting';

/* ---------------------------- Eliminar usuario ---------------------------- */
DROP USER 'usario2'@'hosting';

/* ------------------------------- Privilegios ------------------------------ */
SHOW GRANTS;
SHOW GRANTS FOR 'root'@'localhost';

/* ---------------------- Otorgar todos los privilegios --------------------- */
GRANT ALL ON *.* TO 'usario2'@'hosting';
SELECT * FROM USER WHERE HOST='hosting';

/* ---------------------- Otorgar privilegios a tablas ---------------------- */
GRANT SELECT, DELETE ON creditos.credito TO 'usario2'@'hosting';
SHOW GRANTS FOR 'usario2'@'hosting';

/* ------------------- Otorgar privilegios sobre columnas ------------------- */
GRANT UPDATE, SELECT (SALDO) ON creditos.credito TO 'usario2'@'hosting';

/* ---------------------- Revocar todos los privilegios --------------------- */
REVOKE ALL ON *.* FROM 'usario2'@'hosting';
SHOW GRANTS FOR 'usario2'@'hosting';

/* ----------------------- Revocar permisos especiales ---------------------- */
REVOKE UPDATE ON *.* FROM 'usario2'@'hosting';




