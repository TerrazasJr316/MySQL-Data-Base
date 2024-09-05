-- este es un comentario en linea

/*Este es un
comentario en
varias lineas*/

CREATE DATABASE prueba;

-- INGRESA A LA BASE DE DATOS
USE prueba;

-- Crear una tabla en la base de datos
CREATE TABLE PRODUCTOS(
id_productos INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(30) NOT NULL,
precio DECIMAL(10,2) NOT NULL
);

-- Modificar la tabla productos
ALTER TABLE prueba.productos ADD STOCK INT;

/*
Tarea:
modificar la columna STOCK en minúscula.
*/

-- Renombrar la tabla productos

RENAME TABLE productos TO inventario;

-- Eliminar la tabla
DROP TABLE inventario;

