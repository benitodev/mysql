/* mostrar todos los autos en cuya marca exista la letra a y cuyo modelo empiece con f*/

SELECT modelo, marca FROM autos WHERE marca LIKE '%a%' and modelo LIKE '%f%';