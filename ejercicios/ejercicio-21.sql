/*Obtener los nombres y ciudades de los clientes que tengan encargos (mayor a 1) */

SELECT nombre, ciudad FROM clientes WHERE id IN (SELECT cliente_id FROM encargos WHERE encargo > 1);