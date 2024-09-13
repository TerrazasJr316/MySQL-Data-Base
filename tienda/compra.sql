CREATE TABLE compra(
id_venta INT,
id_cliente INT,
PRIMARY KEY(id_cliente),
FOREIGN KEY (id_venta) REFERENCES venta(id_venta),
FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
nombre VARCHAR(30) NOT NULL,
apellido1 VARCHAR(30) NOT NULL,
apellido2 VARCHAR(30) NOT NULL
);