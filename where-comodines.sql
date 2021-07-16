--Ejemplo: Mostrar nombre y apellido de todos los usuarios registrados en 2004
SELECT nombre, apellido FROM usuarios WHERE YEAR(fechas) = 2004;

--Ejemplo: Mostrar nombre y apellido de todos los usuarios que no sean del 2004 o fecha nula
SELECT nombre, apellido FROM usuarios WHERE YEAR(fechas) != 2004 OR ISNULL(fechas);


/*
Comodines: USADO CON LIKE '(COMODIN)' 

Cualquier cantidad de caracteres: %
Un caracter desconocido: _

*/

-- Extraer todo de nombre DONDE NOMBRE TENGA UNA K
SELECT nombre FROM usuarios WHERE nombre LIKE '%k%';

--Extraer todo de apellido cuando el año sea par
SELECT apellido FROM usuarios WHERE (YEAR(fechas)%2 = 0);

--Extrar nombre(en mayuscula) y apellido DONDE NOMBRES SEAN MAYOR A 5 CARACT Y
--SEA MENOR A 2005 SU FECHA

SELECT UPPER(nombre) AS 'Nombre', apellido FROM usuarios WHERE LENGTH(nombre) > 5 AND YEAR(fechas) < 2005;

-- LIMIT Y ORDER BY
SELECT * FROM usuarios ORDER BY id ;

-- Extrae desde el tercer registro 
SELECT * FROM usuarios LIMIT 2 