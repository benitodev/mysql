ASCII   – Retorno el valor ASCII del primer caracter
LTRIM – Elimina espacios en blanco iniciales
SPACE – Devuelve una cadena de espacios
STR – Convierte un dato a tipo cadena de caracteres
CONCAT  – Concatena cadenas de caracteres
STUFF – Inserta una cadena en otra
REPLACE – Reemplaza una cadena por otra
SUBSTRING – Extrae una cantidad de caracteres de una cadena
REPLICATE – Repite una cadena de caracteres
LEFT  – Obtiene caracteres de la izquierda
REVERSE  – Invierte la escritura de una cadena
UPPER – Convierte a mayúsculas
LEN  – Obtiene la longitud de la cadena
RIGHT – Devuelve caracteres de la derecha
LOWER – Convierte a minúsculas
RTRIM   – Elimina los espacios en blanco del final de una cadena de caracteres


SELECT CONCAT(nombre, " ", id) FROM categorias;
SELECT UPPER(CONCAT(nombre, " ", id)) FROM categorias;

SELECT LENGTH(CONCAT(nombre, " ", id)) AS 'longitud de caract' FROM categorias;


SELECT LENGTH TRIM((CONCAT("   ",nombre, " ", id, "   "))) AS 'longitud de caract' FROM categorias;

ALTER TABLE 