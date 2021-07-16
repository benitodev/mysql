# Aprendiendo a fondo MYSQL
Base de datos basada en un sistema de gestión de datos relacionales, esto significa que usa un modelo relacional ordenado en tuplas. 
Encontrarán cosas que he escrito para aprender, aunque hay otras que no y las tengo guardadas en Discord o simplemente aprendí en el momento.
Recomiendo ver mucho los ejercicios son muy buenos!

## ¿Es usado MYSQL?
**Por supuesto** Es utilizado en aplicaciones web y algunas de ellas son Wordpress, Joomla, Drupal, etc.

## Diferencia con las bases NOSQL
**SQL** Combina de forma eficientes distintas tablas para extraer información relacionada de estas. 
**NoSQL** NO permite lo anterior o muy limitadamente, sirve para distribuir grandes cantidades de información y no afectar el rendimiento de la aplicación
**Nota**: Basicamente para una aplicación que no va manejar miles y miles de datos por segundos es mejor usar una base no relacional (Nosql). Mientras que algo más pequeño, proyecto propio, un blog, etc.Usar SQL.

## Dato extra INTERFAZ VISUAL PARA MySQL
Se puede utilizar un programa llamado MySQL Workbench para visualizar de forma más cómoda las bases de datos, tablas, campos, etc. Además podemos crear diagramas de flujos (es un tipo de abstracción de lo que será la base de dato con sus tablas relacionadas) y luego lo pasa automaticamente a codigo MySQL, basicamente genera una base de dato sin utilizar ningun codigo, simplemente armamos el esquema visual y listo. 


### Diagrama del workbench!
![Workbench diagrama](/img/workbench-diagrama.PNG)

### La "consola" del workbench!
![Workbench diagrama](/img/workbench-base-dato.PNG)

## Por final dejo el codigo de la base de dato si quieren realizar los ejercicios


***Base de dato***
CREATE DATABASE ejemplo;



***Tablas***
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

**Luego las entradas se encargarán, tengo muchos datos que he borrado o no he dejado todo completo!**