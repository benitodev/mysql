/* MOstrar datos del vendedor con más antiguedad en el concesionario */

SELECT * FROM vendedores WHERE DATEDIFF(fecha, CURDATE());