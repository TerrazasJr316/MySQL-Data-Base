CREATE TABLE detalle_venta(
id_detalle INT PRIMARY KEY,
id_venta INT,
id_producto INT,
cantidad INT,
FOREIGN KEY (id_venta) REFERENCES venta(id_venta),
FOREIGN KEY (id_producto) REFERENCES producto(id_producto) 
);