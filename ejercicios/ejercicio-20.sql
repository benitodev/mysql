/*
Seleccionar el grupo en el que trabaja el vendedor con mayor salario y mostrar el nombre del grupo
*/

SELECT id, nombre, ciudad FROM grupos WHERE id IN (SELECT grupo_id FROM vendedores GROUP BY sueldo DESC LIMIT 1) GROUP BY nombre;