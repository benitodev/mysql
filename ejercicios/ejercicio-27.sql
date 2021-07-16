/*
Visualizar nombres de los clientes y la cantidad de encargos realizados, incluyendo los que no hayan realizado encargos
*/

SELECT nombre, COUNT(e.cantidad) FROM clientes c
LEFT JOIN encargo e ON e.cliente_id = c.id;