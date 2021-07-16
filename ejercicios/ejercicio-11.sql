/*Visualizar todos los cargos y el numero de vendedores que hay en cada cargo*/

SELECT cargo, COUNT(id) FROM vendedores GROUP BY cargo;