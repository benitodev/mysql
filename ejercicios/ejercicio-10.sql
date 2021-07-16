/* visualizar los aplleidos de los vendedores, su fecha y su numero de grupo, ordenado por fecha descendente, mostrar los 4 ultimos*/

SELECT nombre, apellido, fecha, grupo_id from vendedores ORDER BY fecha DESC LIMIT 4;