/*
Las subconsultas son consultas dentro de otras. Condicionamos una consulta externa con la primaria
para sacar alguna información en especifico a base de ella. La consulta a una tabla externa debe 
de estar relacionada a la consulta primaria
*/

/*Operador IN sirve para decir (dentro) o mostrar conjunto de resultados*/

--Mostrar todos los usuarios que tengan una registro en la tabla (entradas)
SELECT * FROM usuarios WHERE id IN (SELECT usuario_id FROM entradas);

--Mostrar todos los usuarios que tengan en su titulo short
SELECT * FROM usuarios WHERE id IN (SELECT usuario_id FROM entradas WHERE titulo LIKE '%short%')

--Mostrar todas las entradas de la categoria escrita
SELECT * FROM entradas WHERE categoria_id IN (SELECT id FROM categorias WHERE nombre LIKE 'ropa');

--Mostrar categorias con más 3 entradas
SELECT nombre FROM categorias WHERE id IN (SELECT categoria_id FROM entradas GROUP BY categoria_id HAVING count(categoria_id) > 3); 

--Mostrar usuarios que crearon una entrada un martes
SELECT nombre, id FROM usuarios WHERE id IN (SELECT usuario_id FROM entradas WHERE DAYNAME(fecha) LIKE 'Tuesday');

--Mostrar el nombre del usuario que tenga más entradas

SELECT nombre, id FROM usuarios WHERE id IN (SELECT usuario_id FROM entradas HAVING MAX(SUM()));

SELECT nombre, id FROM usuarios WHERE id = (SELECT usuario_id FROM entradas GROUP BY usuario_id ORDER BY count(usuario_id) desc LIMIT 1)

--Mostrar las categorias sin entradas
INSERT INTO categorias VALUES(NULL, 'Plataforma')

SELECT * FROM entradas WHERE id NOT IN (SELECT usuarios_id FROM entradas);
