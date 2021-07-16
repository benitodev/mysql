CREATE TABLE usuarios (
  id int(30) auto_increment not null,
  nombre varchar(100) not null,
  apellido varchar(100) not null,
  sexo varchar(30),
  email varchar(200), 
  CONSTRAINT pk_usuarios PRIMARY KEY(id),
  CONSTRAINT u_email UNIQUE(email)
)ENGINE=InnoDB;

CREATE TABLE categorias (
  id int(30) auto_increment not null,
  nombre varchar(100) not null,
  tipo varchar(200) not null,
  color varchar(100) not null,
  CONSTRAINT pk_categorias PRIMARY KEY(id)
)ENGINE=InnoDB;

CREATE TABLE entradas (
  id int(30) auto_increment not null,
  usuario_id int(30) not null,
  categoria_id int(30) not null,
  
  CONSTRAINT fk_entrada_usuario FOREIGN KEY(usuario_id) REFERENCES usuarios(id),
  CONSTRAINT fk_categoria_usuario FOREIGN KEY(categoria_id) REFERENCES categorias(id),
  CONSTRAINT pk_entradas PRIMARY KEY(id)
)ENGINE=InnoDB;