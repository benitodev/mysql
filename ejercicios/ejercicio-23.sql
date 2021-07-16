/*
Listar todos los encargos realizados con la marca del auto y el nombre del cliente
*/

SELECT e.id, a.marca, c.nombre FROM encargos e 
INNER JOIN autos a ON e.auto_id = a.id
INNER JOIN clientes c ON e.cliente_id = c.id;
;  