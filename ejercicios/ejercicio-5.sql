/* Mostrar a todos los vendedores y cuantos días llevan trabajando*/

SELECT nombre, fecha, DATEDIFF(CURDATE()) AS 'Cuanto tiempo llevan trabajando' FROM vendedores; 