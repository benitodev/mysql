/*Visualizar el nombre y los apellidos de los vendedores en una misma columna, su fecha de registro y el dia de la semana en la que registraron*/

SELECT CONCAT(nombre, ' ', apellido), fecha, DAYNAME(fecha) FROM vendedores;