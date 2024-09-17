CREATE TABLE cliente_producto(
id_compra INT PRIMARY KEY,
id_cliente INT,
id_producto INT,
FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
FOREIGN KEY (id_producto) REFERENCES producto(id_producto)
);