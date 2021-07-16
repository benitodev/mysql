
-- GROUP BY sintaxis para agrupar las entradas de una tabla, saben llevar alguna funcion de agrupacion a su vez, asi sola no sirve de mucho!


INSERT INTO categorias VALUES(null, 'ropa', null);
INSERT INTO categorias VALUES(null, 'accesorio', null);
INSERT INTO categorias VALUES(null, 'comida', null);
--Sacar agrupamientos de tablas
ALTER TABLE entradas ADD titulo varchar(200) null;
INSERT INTO entradas VALUES(null, 'comida', null);

INSERT INTO entradas VALUES(null, 9, 6,"fua que tu outfit es de mas de 400pavos", "reloj cinduan");
INSERT INTO entradas VALUES(null, 9, 7,"aretes que te cagas", "aros");
INSERT INTO entradas VALUES(null, 9, 8,"a lo pobre hervidon", "salchichas");


