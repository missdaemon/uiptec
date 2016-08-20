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


