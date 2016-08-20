CREATE DATABASE uiptec;
USE uiptec;

CREATE TABLE Fabricantes(
id INT PRIMARY KEY AUTO_INCREMENT,
Nombre VARCHAR(250));

CREATE TABLE Articulos(
id INT PRIMARY KEY AUTO_INCREMENT,
Nombre VARCHAR(250), 
Precio DECIMAL(10,2),
id_fabricante int, 
FOREIGN KEY (id_fabricante) REFERENCES Fabricantes(id));


INSERT INTO Fabricantes VALUES 
(1, 'Dell'), 
(NULL, 'Toshiba'), 
(NULL, 'HP');


INSERT INTO Articulos VALUES 
(1601, 'Monitor 42"', 180.95, 3), 
(NULL, 'Bocinas', 15.99, 2), 
(NULL, 'Teclado USB', 11.95, 1), 
(NULL, 'Mouse USB', 24.99, 1), 
(NULL, 'Cargador para Laptop', 55.99,3);

SELECT * FROM Articulos ORDER BY id_fabricante ASC;

-- Seleccionar todos los datos de los articulos cuyo precio esta entre 50$ y 100$
SELECT id AS Código, Nombre as Articulo, Precio FROM Articulos
WHERE Precio >= 50 AND Precio <= 100;
-- Seleccionar todos los datos de los artículos cuyo precio está entre $50 y $100.

-- Seleccionar el precio promedio de los artículos cuyo fabricante tenga el código 3.
SELECT AVG(Precio) FROM Articulos  
WHERE id_fabricante = 3;

-- Seleccionar la cantidad de artículos cuyo precio sea menor a $175.
SELECT COUNT(Precio) as Cantidad_Articulos 
FROM Articulos 
WHERE Precio < 175;

-- Seleccionar una lista con el nombre y precio de los artículos más caros de cada proveedor.
SELECT id_fabricante AS Código_Fabricante, id AS Código_Articulo, Nombre AS Articulo, MAX(Precio) AS Precio  
FROM Articulos
GROUP BY id_fabricante ASC, id, Nombre LIMIT 1,3;

-- Cambiar el nombre del producto 2 a Impresora.
UPDATE Articulos 
SET Nombre = 'Impresora'
WHERE id = '1602';




