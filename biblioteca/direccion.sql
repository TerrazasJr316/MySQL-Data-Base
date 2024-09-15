CREATE TABLE direccion(
id_direccion INT,
calle VARCHAR(255),
codigo_postal INT,
numero_interior INT,
numero_exterior INT,
estado VARCHAR(255),
localidad VARCHAR(255),
FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);
