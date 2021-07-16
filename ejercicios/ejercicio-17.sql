/*
Obtener un listado con los encargos realizados por el cliente Narcon INC
*/

SELECT c.nombre, c.gastado, a.nombre, a.modelo  FROM encargos e
INNER JOIN clientes c ON c.id = e.cliente_id
INNER JOIN autos a ON a.id = e.auto_id
 WHERE e.cliente_id IN (SELECT id FROM clientes WHERE nombre='Narco INC')

