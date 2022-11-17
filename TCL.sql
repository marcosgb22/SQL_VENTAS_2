INSERT INTO PRODUCTO (NOMBRE,CLAVE,CODIGO,PRECIO) VALUES (1, 'Primero');
INSERT INTO producto (NOMBRE,CLAVE,CODIGO,PRECIO) VALUES (2, 'Segundo');
INSERT INTO producto (NOMBRE,CLAVE,CODIGO,PRECIO) VALUES (3, 'Tercero');

-- 1. Comprobamos las filas que existen en la tabla
SELECT *
FROM PRODUCTO;

-- 2. Ejecutamos una transacción que incluye un SAVEPOINT
START TRANSACTION;
INSERT INTO PRODUCTO  (id, nombre) VALUES (4, 'Cuarto');
SAVEPOINT sp1;
INSERT INTO PRODUCTO  (id, nombre) VALUES (5, 'Cinco');
INSERT INTO PRODUCTO  (id, nombre) VALUES (6, 'Seis');
ROLLBACK TO sp1;