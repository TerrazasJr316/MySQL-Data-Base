CREATE TABLE producto(
id_producto INT PRIMARY KEY,
id_categoria INT,
nombre VARCHAR(255),
precio DECIMAL(10,2),
FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria)
);