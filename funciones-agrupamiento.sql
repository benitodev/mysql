--Consulto la media de algo AVG(id) 
SELECT AVG(id) AS 'Calcular la media', categoria_id  FROM entradas;
--Consulto cuantas entradas hay en titulo y los agrupo por categoria_id
SELECT count(titulo) AS 'cuantos hay de', categoria_id  FROM entradas GROUP BY categoria_id;
--Usuario con el id mayor y el respectivo titulo
SELECT MAX(id) AS 'ID MÁS GRANDEE', titulo FROM entradas;
--Usuario con el id menor y su respectivo titulo
SELECT MIN(id) AS 'ID MÁS pequeño', titulo FROM entradas;
--Suma de id de todas las entradas
SELECT SUM(id) AS 'Suma de todos los id' FROM entradas;

--Para mostrar el titulo de cada uno!!
SELECT id, titulo FROM entradas WHERE id = (SELECT MAX(id) FROM entradas);