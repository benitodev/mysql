/* Obtener lista de los nombres de los clientes con el importe de sus encargos acumulado*/

SELECT c.nombre, SUM(a.precio * e.cantidad), c.gastado FROM clientes c
INNER JOIN encargos e ON c.id = e.cliente_id
INNER JOIN autos a ON e.auto_id = a.id
GROUP BY c.nombre;