/*Diseño y creación de la base de datos
Para esto he usado workbench que es una programa de interfaz visual en el cual me sirve para hacer diagramas de entidad relación y crear las bases de datos. A su vez escribo el codigo ahí, pero iré enviando los codigos propuesto de allí
*/

--Es una base de datos de una concesionaria, recordar que ENGINE=InnoDB es un motor para aumentar el rendimiento en transacciones, intercambio de dato, DELETE etc. 
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
