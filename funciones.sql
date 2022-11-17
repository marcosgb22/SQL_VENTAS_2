

CREATE FUNCTION COMPRAS_USUARIO
(@USUARIO AS VARCHAR (30))
  RETURN TABLE
AS
 RETURN(SELECT USUARIO.NOMBRE AS NOMBRE , PRODUCTOS.NOMBRE AS NOMBRE FROM USUARIO USUARIO INNER JOIN PRODUCTOS PRODUCTOS
       WHERE USUARIO.NOMBRE = @USUARIO)
       
SELECT * FROM COMPRAS_USUARIO('Daryl Garrett')


-- calcula el total de compras

CREATE FUNCTION FN_TOTAL ()
RETURNS INT 
DETERMINISTIC 
BEGIN 
DECLARE  TOTAL_TABLA INT;
SELECT COUNT(TOTAL) INTO TOTAL_TABLA FROM COMPRAS;
RETURN TOTAL_TABLA;
END 