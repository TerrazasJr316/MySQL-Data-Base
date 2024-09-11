CREATE TABLE venta_producto(
id_cliente INT,
id_venta INT,
PRIMARY KEY(id_cliente , id_venta),
FOREIGN KEY(id_cliente) REFERENCES cliente(id_cliente) ON UPDATE CASCADE ON DELETE RESTRICT,
FOREIGN KEY(id_venta) REFERENCES venta(id_venta) ON UPDATE CASCADE ON DELETE RESTRICT
);