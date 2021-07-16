ALTER TABLE usuarios ADD fecha date not null;

SELECT CURDATE();

SELECT fecha, DATEDIFF(fecha, CURDATE())  AS 'DIFERENCIAS DE TIEMPO' FROM usuarios; 

SELECT fecha, DAYNAME(fecha)  AS 'diade la fecha' FROM usuarios; 

SELECT fecha, DAYOFMONTH(fecha)  AS 'diade la fecha' FROM usuarios; 

SELECT fecha, DAYOFWEEK(fecha)  AS 'dia de la fecha' FROM usuarios; 
