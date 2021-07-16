/*

Crear una vista llamada vendedores A que incluirá todos los vendedores del grupo "A"
*/

CREATE VIEW vendedroesA AS 
SELECT * FROM vendedores WHERE grupo_id IN (SELECT id FROM grupos WHERE nombre = '%vendedores A%')