/*
Mostrar listado de clientes (numero de cliente y el nombre) tambien el numeor de vendedor y su nombre.

*/

SELECT c.id, c.nombre, c.vendedor_id, v.nombre FROM clientes c INNER JOIN vendedores v ON v.id = c.vendedor_id;  