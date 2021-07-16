/* Es la mejora de la multitabla, ya que la otra recorré todas las tablas con sus respectivas entradas y luego muestra las que cumplen cierta condición. Basicamente, recorre todas las tablas y sus entradas, podría ser muy pesado esto.*/

--Combinaciones internas(inner join). Clausula para mostrar los usuarios cunado tenga tal condición(ON)
INNER JOIN usuarios u ON e.usuario_id = u.id


SELECT e.id, e.titulo, u.nombre AS 'Autor' FROM entradas e INNER JOIN usuarios u ON e.usuario_id = u.id GROUP BY e.usuario_id;

/* LEFT JOIN-RIGHT JOIN Indica la tabla principal y esto ocasiona mostrar TODO de esta tabla, aunque no tengamos un ON(comprobación de si existe cierto dato de una tabla a otra, esto para no imprimir absolutamente todo de cada tabla al utilizar la sentencia SELECT!). El cambio radica en mostrarlo como valor null o 0 (dependiendo el SELECT si es común o manipulando información de numeros)*/


--Los usuarios que tengan una entrada y si no tienen, mostrar null
SELECT u.id as 'ID DEL USUARIO', e.titulo as 'TITULO DEL USUARIO', u.nombre AS 'Autor' FROM entradas e RIGHT JOIN usuarios u ON e.usuario_id = u.id GROUP BY e.usuario_id;


SELECT e.id as 'ID DEL USUARIO', e.titulo as 'TITULO DEL USUARIO', u.nombre AS 'Autor' FROM entradas e left JOIN usuarios u ON e.usuario_id = u.id;

