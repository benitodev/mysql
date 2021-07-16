/* Modificar la comisión de los vendedores y ponerla al %2 cuando ganan más de 800.000*/

UPDATE vendedores SET comision=2 WHERE sueldo => 800000;


