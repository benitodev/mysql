SELECT nombre, fechas, ISNULL(fechas) FROM usuarios;

--Comprueba si son distintos los valores puestos, este caso seria 0 == false. SON IGUALES!
SELECT STRCMP('HOLA', 'HOLA');

-- VERSION DE MYSQL
SELECT VERSION();

-- EL  USUARIO Y SERVIDOR (RECORRE TODOS LOS USUARIOS)
SELECT USER();
-- MUESTRA SOLO UN VALOR 
SELECT  DISTINCT USER()
-- me trae solamente un nombre
SELECT DISTINCT DATABASE() FROM usuarios();
--si está vacío alguna entrada del campo usuarios, y si es asi lo reemplaza con un texto
SELECT IFNULL(fechas, 'está vacío') from usuarios;