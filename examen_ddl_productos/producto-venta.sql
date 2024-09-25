CREATE TABLE prodcutos(
id_producto INT AUTO_INCREMENT PRIMARY KEY,
nombre_producto VARCHAR(100) NOT NULL,
precio DECIMAL(10,2) NOT NULL,
stock INT
);

CREATE TABLE venta(
id_venta INT AUTO_INCREMENT PRIMARY KEY,
id_producto INT,
cantidad INT  CHECK(cantidad != 0),
fecha_venta DEFAULT CURRENT_TIMESTAMP,
FOREIGN (id_producto) REFERENCES producto(id_producto) ON UPDATE CASCADE ON DELETE RESTRICT
);

ALTER TABLE productos ADD COLUMN descripcion VARCHAR(50);

ALTER TABLE Productos DROP COLUMN stock;

DROP TABLE ventas;