/*
Obtener los vendedores con 2 o más clientes
*/

SELECT * from vendedores WHERE id IN (SELECT vendedor_id FROM clientes WHERE SUM(vendedor_id) > 3);