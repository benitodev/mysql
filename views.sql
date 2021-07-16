/* Sirve para guardar consultas en una tabla virtual (se visualiza esta consulta como una tabla común. O sea en show tables). Esto sirve para optimizar la escritura, es menos verboso!. RECALCO QUE SE ACTUALIZA(solo) Y NO ES QUE GUARDAMOS DATOS!!*/


SELECT u.id as 'ID DEL USUARIO', e.titulo as 'TITULO DEL USUARIO', u.nombre AS 'Autor' FROM entradas e RIGHT JOIN usuarios u ON e.usuario_id = u.id GROUP BY e.usuario_id;

CREATE VIEW consulta_usuarios_entradas AS SELECT u.id as 'ID DEL USUARIO', e.titulo as 'TITULO DEL USUARIO', u.nombre AS 'Autor' FROM entradas e RIGHT JOIN usuarios u ON e.usuario_id = u.id GROUP BY e.usuario_id;