/* Mostrar los clientes atendidos por NELSON SANCHEZ*/

SELECT * FROM clientes WHERE vendedor_id = (SELECT id FROM vendedores WHERE nombre='Nelson' and apellido='Sanchez');
SELECT * FROM clientes WHERE vendedor_id = 3;