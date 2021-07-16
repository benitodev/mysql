
--Para poder consultar multiples tablas!! recordar especificar sentencias para que no se repitan por error de logica en sql!

SELECT e.id, u.nombre, u.id AS 'id del usuario', c.nombre FROM entradas e, categorias c, usuarios u WHERE e.usuario_id = u.id AND e.categoria_id = c.id;

--Mostrar el nombre de las categorias y las entradas que tienen
SELECT c.nombre, COUNT(e.categoria_id) AS 'Entradas de la categoria' FROM categorias c, entradas e WHERE e.categoria_id = c.id GROUP BY e.categoria_id;

--Mostrar el mail de los usuarios y al lado sus entradas
SELECT u.email, COUNT(e.usuario_id) AS 'Entradas del mail' FROM usuarios u, entradas e WHERE e.usuario_id = u.id GROUP BY e.usuario_id;