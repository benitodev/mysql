/* Obtener el coche con más unidades vendidas*/

SELECT * FROM autos WHERE id IN(SELECT auto_id FROM encargos WHERE cantidad IN(SELECT MAX(cantidad) FROM encargos));