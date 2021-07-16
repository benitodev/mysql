-- cascade
/* significa que la llave relacionada (foreign) se vea afecta por los cambios (eliminar, actualizar, etc)
 de la llave llamada (una llave primaria)*/
--ON DELETE CASCADE / ON UPDATE CASCADE / ON DELETE SET NULL / SET DEFAULT
ALTER TABLE entradas ADD CONSTRAINT fk_categoria_usuario_2 FOREIGN KEY(categoria_id) REFERENCES categorias(id) ON DELETE CASCADE,