/* Escribir todos los vendedores cuya fecha sea posterior al 1 de julio de 2021*/


--Cambiando fechas de vendedores
UPDATE vendedores SET fecha='2021-06-3' WHERE id = 2;
UPDATE vendedores SET fecha='2021-05-21' WHERE id = 5;
UPDATE vendedores SET fecha='2020-07-02' WHERE id = 1;

SELECT nombre, fecha, cargo FROM vendedores WHERE fecha > '2021-07-1'; 