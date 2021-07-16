/*Mostrar todos los vendedores del grupo numero 2, ordenados por salario de mayor a menor*/

SELECT nombre, sueldo FROM vendedores WHERE grupo_id = 2 ORDER BY sueldo DESC;