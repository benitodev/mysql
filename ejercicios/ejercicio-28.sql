/*
Listar los vendedores y el numero de clientes que tienen. Se deben mostrar tengan o no
*/

SELECT id, nombre, apellido, COUNT(c.id) FROM vendedores v
LEFT JOIN clientes c ON c.vendedor_id = v.id;
