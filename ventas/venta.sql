CREATE TABLE venta(
id_venta INT PRIMARY KEY,
id_cliente INT,
fecha_venta DATE,
FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);