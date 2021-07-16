CREATE TABLE pipitos(
  id  int(11) auto_increment not null,
  nombre varchar(100),
  apellido varchar(255) not null,
  signo varchar(255),
  sexo varchar(50) null,
  tamaño int (11),
  CONSTRAINT pk_usuarios PRIMARY KEY(id)
)

  /* Renombrar una tabla */
ALTER TABLE pipitos RENAME TO usuarios;
 /* cambiar nombre y valores de una columna */
ALTER TABLE usuarios MODIFY sexo genero char(30) null;
 /* cambiar solo los valores de una columna */
ALTER TABLE usuarios MODIFY sexo char(30) null;
 /* añadir una columna a la tabla jajajajajajJJAAJJ*/
ALTER TABLE usuarios ADD website varchar(100) null;
/* añadir una restricción UNIQUE = VALOR ÚNICO */
ALTER TABLE usuarios ADD CONSTRAINT uq_sexo UNIQUE(sexo);

/* eliminar una columna*/
ALTER TABLE usuarios DROP genero;
/* ver los datos de mi tabla  */
select * from usuarios;
/*restricciones de integridad basicas*/

/* not null : meter siempre un valor en el campo*/
/* null: puede ser nulo el valor*/
/* default: valor por defecto. ej: default 'hola'*/

/*auto_increment: incrementa solo el valor del campo (id). Importante: ESTO SOLO ANDARÁ CON PRIMARY KEY*/

/*CONSTRAINT pk_usuarios PRIMARY KEY(id) */


