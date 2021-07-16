/*
Listar clientes que hayan pedido el auto A3 Sportback

Aquí este ejercico ya es algo complicado
*/

SELECT * FROM clientes WHERE id IN (SELECT cliente_id FROM encargos WHERE auto_id IN (SELECT id FROM autos WHERE modelo = 'A3 Sportback') );