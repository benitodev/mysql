/* Sacar la media de sueldos entre todos los vendedores por grupo*/

SELECT grupo_id, AVG(sueldo) FROM vendedores GROUP BY grupo_id;