CREATE TABLE prestamo(
id_prestamo INT PRIMARY KEY,
id_libro INT,
id_cliente INT,
fecha_prestamo DATE,
fecha_devolucion DATE,
FOREIGN KEY (id_libro) REFERENCES libro(id_libro),
FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);
