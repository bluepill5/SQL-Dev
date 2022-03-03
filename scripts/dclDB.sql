/* -------------------------------------------------------------------------- */
/*                                     DCL                                    */
/* -------------------------------------------------------------------------- */

USE mysql;

/* --------------------------- Creacion de usuarios -------------------------- */
CREATE USER 'usuario_sel'@'hosting' IDENTIFIED BY 'lectura';
CREATE USER 'usuario_sel_ins_upd'@'hosting' IDENTIFIED BY 'sel_ins_upd';


/* ------------------------------- Privilegios ------------------------------ */
-- El usuario 'usuario_sel' debe tener permiso de lectura en todas las tablas
-- El usuario 'usuario_sel_ins_upd' debe tener permisos de lectura, inserción
-- y modificación de datos
-- Ninguno de ellos podrá eliminar registros de ninguna tabla

/* ---------------------- Otorgar privilegios a tablas ---------------------- */
-- Por default al crear los usuarios no tienen privilegios lo observamos con la
-- siguiente sentencia:
SELECT * FROM user;

-- Otorgamos privilegios de lectura al usuario 'usuario_sel' a todas las tablas
-- de creditos
GRANT SELECT ON creditos.* TO 'usuario_sel'@'hosting';
SHOW GRANTS FOR 'usuario_sel'@'hosting';

-- Otorgamos privilegios de lectura, inserción y modificación al usuario 
-- 'usuario_sel_ins_upd'
GRANT SELECT, INSERT, UPDATE ON creditos.* TO 'usuario_sel_ins_upd'@'hosting';
SHOW GRANTS FOR 'usuario_sel_ins_upd'@'hosting';



