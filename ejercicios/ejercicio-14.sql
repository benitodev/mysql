/*
Visualizar las unidades totales vendidas a cada coche a cada cliente. Mostrando el nombre del producto, numero de cliente y la suma de unidades.
*/

SELECT e.cantidad AS 'Cantidad de autos', e.cliente_id as 'Cliente ID', a.modelo as 'Cual auto', a.precio FROM encargos e
INNER JOIN autos a ON e.auto_id = a.id 
