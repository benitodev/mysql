/*
Sacar los vendedores que tienen jefe y sacar el nombre del jefe
*/

SELECT v.nombres j.nombres FROM vendedores 
INNER JOIN vendedores j ON v.jefe = j.id;