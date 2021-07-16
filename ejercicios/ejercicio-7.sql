/* MOSTRAR nombre y sueldo de los vendedores con cargo de 'Ayudante de tienda'*/

SELECT nombre, sueldo, cargo FROM vendedores WHERE cargo LIKE '%ayudante de tienda%';  