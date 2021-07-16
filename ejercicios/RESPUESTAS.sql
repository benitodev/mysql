CREATE TABLE autos(
id int(10) auto_increment NOT NULL,
modelo varchar(100) NOT NULL,
marca varchar(50),
precio int(20) NOT NULL,
stock int(255) NOT NULL,
CONSTRAINT pk_coches PRIMARY KEY(id)
)ENGINE=InnoDB; 

CREATE TABLE grupos(
id int(10) auto_increment NOT NULL,
nombre varchar(100) NOT NULL,
ciudad varchar(100),
CONSTRAINT pk_grupos PRIMARY KEY(id)
)ENGINE=InnoDB; 

CREATE TABLE vendedores(
id int(10) auto_increment NOT NULL,
grupo_id int(10) NOT NULL,
jefe int(10),
nombre varchar(100) NOT NULL,
apellido varchar(100) NOT NULL,
cargo varchar(150),
fecha date,
sueldo float(20, 2),
comision float(10, 2),
CONSTRAINT pk_vendedores PRIMARY KEY(id),
CONSTRAINT fk_vendedor_grupo foreign key(grupo_id) REFERENCES grupos(id),
CONSTRAINT fk_vendedor_jefe foreign key(jefe) REFERENCES vendedores(id)
)ENGINE=InnoDB; 




CREATE TABLE clientes(
id int(10) auto_increment NOT NULL,
vendedor_id int(10),
nombre varchar(100) NOT NULL,
ciudad varchar(100),
gastado float(50,2),
fecha date,
CONSTRAINT pk_clientes PRIMARY KEY(id),
CONSTRAINT fk_cliente_vendedor foreign key(vendedor_id) REFERENCES vendedores(id)
)ENGINE=InnoDB; 


CREATE TABLE encargos(
id int(10) auto_increment NOT NULL,
cliente_id int(10) NOT NULL,
auto_id int(10) NOT NULL,
cantidad int(100),
fecha date,
CONSTRAINT pk_cencargos PRIMARY KEY(id),
CONSTRAINT fk_encargo_cliente foreign key(cliente_id) REFERENCES clientes(id),
CONSTRAINT fk_encargo_auto foreign key(auto_id) REFERENCES autos(id)
)ENGINE=InnoDB;

SELECT * from grupos;
SELECT * from vendedores;
DROP TABLE vendedores;
DELETE FROM vendedores;

ALTER TABLE vendedores AUTO_INCREMENT = 1;

INSERT INTO autos VALUES(null, 'Bipper', 'Peugeot', 3200000, 2);

INSERT INTO grupos VALUES(null, 'Vendedores A', 'Madrid');
INSERT INTO grupos VALUES(null, 'Vendedores B', 'Barcelona');
INSERT INTO grupos VALUES(null, 'Vendedores C', 'Bilbao');

INSERT INTO vendedores VALUES(null, 1, null, 'David', 'Lopez', 'Responsable de tienda', CURDATE(), 1600000, 9);
INSERT INTO vendedores VALUES(null, 1, 1, 'Fran', 'Martinez', 'Ayudante de tienda', CURDATE(), 60000, 2);
INSERT INTO vendedores VALUES(null, 2, null, 'Nelson', 'Sanchez', 'Responsable de tienda', CURDATE(), 1600000, 9);
INSERT INTO vendedores VALUES(null, 2, 3, 'Jesus', 'schwerdinz', 'Ayudante de tienda', CURDATE(), 60000, 2);
INSERT INTO vendedores VALUES(null, 3, null, 'Victor', 'Valentin', 'Mecanico jefe', CURDATE(), 200000, 5);
INSERT INTO vendedores VALUES(null, 4, null, 'Melisa', 'Cardo', 'Administrador de cuenta', CURDATE(), 300000, 4);
INSERT INTO vendedores VALUES(null, 5, null, 'Salvador', 'Belgrano', 'Vendedor experto', CURDATE(), 100000, 4);
INSERT INTO vendedores VALUES(null, 6, null, 'Carolina', 'Joyas', 'Marketing', CURDATE(), 100000, 3);
INSERT INTO vendedores VALUES(null, 6, 8, 'Luis', 'Vicentico', 'Ayudante de la tienda', CURDATE(), 60000, 2);

##CLIENTES 
##Numero del cliente/quién le vendió/nombre del comprador/ciudad/gasto total/fecha de compra
INSERT INTO clientes VALUES(null, 1, 'Narco INC', 'Mar bella', 3600000, CURDATE());
INSERT INTO clientes VALUES(null, 1, 'Merqueria', 'Tucuman', 6000000, CURDATE());
INSERT INTO clientes VALUES(null, 1, 'Narco INC', 'Salta', 3200000, CURDATE());
INSERT INTO clientes VALUES(null, 1, 'Narco INC', 'Salta', 3200000, CURDATE());

INSERT INTO clientes VALUES(null, 3, 'papuarco SINC', 'Tierra del fuego', 3200000, CURDATE());
## ENCARGOS
##numero de encargo, cual cliente, id de auto, cantidad de compras, fecha de encargo
INSERT INTO encargos VALUES(null, 1, 1, 2, CURDATE());
INSERT INTO encargos VALUES(null, 2, 3, 2, CURDATE());
INSERT INTO encargos VALUES(null, 3, 4, 1, CURDATE());
INSERT INTO encargos VALUES(null, 3, 5, 1, CURDATE());
INSERT INTO encargos VALUES(null, 5, 4, 1, CURDATE());

SELECT * FROM grupos;
SELECT * FROM encargos;
SELECT * FROM clientes;
SELECT * FROM autos;
SELECT * FROM vendedores;

/* Mostrar los clientes que más pedidos han hecho y mostrar cuantos hicieron*/
SELECT cliente_id, sum(cantidad) FROM encargos GROUP BY cliente_id ORDER BY cantidad DESC;


/* Mostrar los clientes atendidos por NELSON SANCHEZ*/

##EJERCICIOS 
##modificar la comision de los vendedores y ponerla al 2% cuando ganen más de 25.000
SELECT * FROM vendedores;
UPDATE vendedores SET comision = 2 WHERE sueldo >= 25000;

##aumentar en un 2% el precio de los autos
UPDATE autos SET precio = precio*1.05;
SELECT * FROM autos;

##sacar a todos los vendedores cuya fecha de alta sea posterior al 20 de mayo de 2021
##cambiar fecha para hacer el ejercicio más entendible
UPDATE vendedores SET fecha = '2021-6-28' WHERE id = 1;
UPDATE vendedores SET fecha = '2021-3-14' WHERE id = 4;
SELECT fecha, nombre FROM vendedores WHERE fecha >= '2021-5-20';

##mostrar todos los vendedores con su nombre y el numero de dias que llevan en la concesionaria
SELECT nombre,  DATEDIFF(CURDATE(),fecha) FROM vendedores;


##actualizar el nombre y apellido de los vendedores en una misma columna, su fecha de registro y el dia de la semana en que se registraron
SELECT CONCAT(nombre , ' ' , apellido) AS 'nombre y apellido', fecha, DAYNAME(fecha) AS 'dia de la semana' FROM vendedores;

##mostrar el nombre y el salario de los vendedores con el cargo de ayudante de tienda
SELECT nombre, sueldo FROM vendedores WHERE cargo LIKE 'Ayudante de tienda';
SELECT nombre, sueldo FROM vendedores WHERE cargo =  'Ayudante de tienda';

##visualizar todos los coches en cuya marca exista la letra A y cuyo modelo empiece en C
SELECT modelo, marca FROM autos WHERE modelo LIKE '%c%' AND marca LIKE '%a%';

##mostrar todos los vendedores del grupo numero dos ordenados por salario de mayor a menor
SELECT nombre, grupo_id, sueldo FROM vendedores WHERE grupo_id = 2 ORDER BY sueldo desc; 

##apellidos de los vendedores, fecha y numero de grupo, ordenado por fecha desc, mostrar los 4 ultimos
SELECT apellido, fecha, grupo_id FROM vendedores ORDER BY fecha desc LIMIT 4;

##todos los cargos y decir cuantos hay de cada uno
SELECT cargo, COUNT(cargo) AS 'cuantos hay de cada uno' FROM vendedores GROUP BY cargo;

##conseguir la masa salarial (todos los salarios juntos)
SELECT SUM(sueldo) FROM vendedores;

##sacar la media de los sueldos de los vendedores por grupo
SELECT ROUND(AVG(sueldo)), grupo_id FROM vendedores GROUP BY grupo_id;
##el mismo pero mostrando el nombre de cada grupo
SELECT ROUND(AVG(sueldo)), grupo_id, g.nombre FROM vendedores
INNER JOIN grupos g ON grupo_id = g.id
 GROUP BY grupo_id;
 
 
 ##visualizar las unidades totales vendidas de cada coche a cada cliente, mostrando el nombre del producto, nombre del cliente y suma de unidades
 SELECT cantidad, SUM(cantidad) AS 'suma de cant', auto_id, a.modelo, c.nombre FROM encargos e
 INNER JOIN autos a ON auto_id = a.id
 INNER JOIN clientes c ON cliente_id = c.id
 GROUP BY e.auto_id;

## Mostrar los clientes que más pedidos han hecho y mostrar cuantos hicieron
SELECT cliente_id, COUNT(id) FROM encargos GROUP BY cliente_id ORDER BY 2 DESC LIMIT 2 ;

/* Mostrar los clientes atendidos por NELSON SANCHEZ*/
SELECT * FROM clientes WHERE vendedor_id = (SELECT id FROM vendedores WHERE nombre='Nelson' and apellido='Sanchez');

##Obtener un listado con los encargos realizados por el cliente Narcon INC
SELECT * FROM encargos WHERE cliente_id IN (SELECT id FROM clientes WHERE nombre='Narco INC');

SELECT c.nombre, c.gastado, a.marca, a.modelo, c.fecha  FROM encargos e
INNER JOIN clientes c ON c.id = e.cliente_id
INNER JOIN autos a ON a.id = e.auto_id
 WHERE e.cliente_id IN (SELECT id FROM clientes WHERE nombre='Narco INC');
 
 /*
Listar clientes que hayan pedido el auto A3 Sportback

Aquí este ejercico ya es algo complicado
*/
SELECT * FROM clientes WHERE id IN (SELECT cliente_id FROM encargos WHERE auto_id 
IN (SELECT id FROM autos WHERE modelo = 'A3 Sportback') ); 

/*
Obtener los vendedores con 2 o más clientes
*/
SELECT * from vendedores WHERE id IN (SELECT vendedor_id FROM clientes HAVING COUNT(vendedor_id) > 3);


/*
Seleccionar el grupo en el que trabaja el vendedor con mayor salario y mostrar el nombre del grupo
*/
SELECT * FROM vendedores GROUP BY sueldo DESC LIMIT 1;
SELECT id, nombre, ciudad FROM grupos WHERE id IN (SELECT grupo_id FROM vendedores GROUP BY sueldo DESC) GROUP BY nombre LIMIT 1;

/*Obtener los nombres y ciudades de los clientes que tengan encargos (mayor a 1) */
SELECT nombre, ciudad FROM clientes WHERE id IN (SELECT cliente_id FROM encargos WHERE cantidad > 1);
/*
Mostrar listado de clientes (numero de cliente y el nombre) tambien el numeor de vendedor y su nombre.
*/
SELECT c.id, c.nombre, c.vendedor_id, v.nombre FROM clientes c INNER JOIN vendedores v ON v.id = c.vendedor_id; 

/* Listar todos los encargos realizados con la marca de auto y el nombre del cliente*/

SELECT e.id, a.marca, c.nombre FROM encargos e 
INNER JOIN autos a ON e.auto_id = a.id
INNER JOIN clientes c ON e.cliente_id = c.id;


/*
Listar los encargos con el nombre del coche, el nombre del cliente y el nombre de la ciudad, pero unicamente cuando 
sean de salta
*/

SELECT e.id, a.marca, a.modelo, c.nombre, c.ciudad FROM encargos e 
INNER JOIN autos a ON e.auto_id = a.id
INNER JOIN clientes c ON e.cliente_id = c.id
WHERE e.cliente_id IN (SELECT id FROM clientes WHERE ciudad = 'salta');


/* Obtener lista de los nombres de los clientes con el importe de sus encargos acumulado*/
SELECT c.nombre, SUM(a.precio * e.cantidad), c.gastado FROM clientes c
INNER JOIN encargos e ON c.id = e.cliente_id
INNER JOIN autos a ON e.auto_id = a.id
GROUP BY c.nombre;


/*
Sacar los vendedores que tienen jefe y sacar el nombre del jefe
*/
SELECT v.nombre, j.nombre, j.id FROM vendedores v
INNER JOIN vendedores j ON v.jefe = j.id;


/*
Visualizar nombres de los clientes y la cantidad de encargos realizados, incluyendo los que no hayan realizado encargos
*/
SELECT nombre, COUNT(e.cantidad) FROM clientes c
LEFT JOIN encargos e ON e.cliente_id = c.id
GROUP BY e.cliente_id;

/*
Listar los vendedores y el numero de clientes que tienen. Se deben mostrar tengan o no
*/
SELECT v.id, v.nombre, v.apellido, COUNT(c.id) FROM vendedores v
LEFT JOIN clientes c ON c.vendedor_id = v.id
GROUP BY v.nombre;

/*
Crear una vista llamada vendedores A que incluirá todos los vendedores del grupo "A"
*/
CREATE VIEW vendedoresA AS 
SELECT * FROM vendedores WHERE grupo_id IN (SELECT id FROM grupos WHERE nombre = 'vendedores A');


SELECT * FROM vendedoresA;

/* MOstrar datos del vendedor con más antiguedad en el concesionario */
SELECT * FROM vendedores WHERE DATEDIFF(fecha, CURDATE()) ORDER BY fecha LIMIT 1;

/* Obtener el auto con más encargos*/
SELECT * FROM encargos;

SELECT e.cantidad, e.cliente_id, a.modelo FROM autos a
INNER JOIN encargos e ON e.auto_id = a.id
 WHERE a.id IN (SELECT auto_id FROM encargos WHERE cantidad IN(SELECT MAX(cantidad) FROM encargos)); 