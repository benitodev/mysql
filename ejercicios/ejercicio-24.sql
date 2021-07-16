/*

Listar los encargos con el nombre del coche, el nombre del cliente y el nombre de la ciudad, pero unicamente cuando 
sean de salta
*/

SELECT e.id, a.marca, a.modelo, c.nombre, c.ciudad FROM encargos e 
INNER JOIN autos a ON e.auto_id = a.id
INNER JOIN clientes c ON e.cliente_id = c.id
WHERE e.cliente_id IN (SELECT id FROM clientes WHERE ciudad = 'salta')
;
