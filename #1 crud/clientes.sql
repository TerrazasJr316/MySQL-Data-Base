CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL CHECK (email LIKE '%_@_%._%'),
    telefono VARCHAR(15) CHECK (LENGTH(telefono) >= 10),
    direccion VARCHAR(255) NOT NULL
);

# CREATE

INSERT INTO clientes (nombre, email, telefono, direccion) VALUES(
'Juan', 
'juan94perez@gmail.com',
'8341234567',
'Calle Filipinas 345'
);

INSERT INTO clientes (nombre, email, telefono, direccion) VALUES(
'Ana',
'anaGomez312@hotmail.com',
'5552345678',
'Avenida Melchor 45'
);

INSERT INTO clientes (nombre, email, telefono, direccion) VALUES(
'Carlos',
'carlos.ruiz@outlook',
'5553456789',
'Calle de los Olivos 59'
);

INSERT INTO clientes (nombre, email, telefono, direccion) VALUES 
('Lucía', 'lucia.garcia@e-mail.com', '3454567890', 'Boulevard de los Pinos 101'),
('Mario', 'sanchezmario@yahoo.com', '5255678901', 'Camino Real 202'),
('Laura', 'laur4Ort1z@tesji.com', '5556789012', 'Calle de la Luna 303');

INSERT INTO clientes (nombre, email, telefono, direccion) VALUES(
'Pedro Morales',
'pedro.morales@example.com',
'5551234',
'Calle de los Vientos 404'
);

# READ

SELECT * FROM clientes;

SELECT nombre, email FROM clientes;

SELECT * FROM clientes WHERE telefono LIKE '555%';

SELECT * FROM clientes WHERE nombre LIKE '%López%';

SELECT * FROM clientes ORDER BY nombre ASC;

SELECT email FROM clientes WHERE id_cliente % 2 = 0;

SELECT * FROM clientes WHERE LENGTH(direccion) > 10;

# UPDATE

UPDATE clientes SET telefono = '5559876543' WHERE id_cliente = 1;

UPDATE clientes SET email = 'nuevo.email@example.com' WHERE id_cliente = 2;

UPDATE clientes SET email = 'juan.perez@example.com' WHERE id_cliente = 3;

UPDATE clientes SET direccion = 'Nueva Dirección' WHERE nombre LIKE '%López%';

UPDATE clientes SET id_cliente = id_cliente + 10;

# DELETE

DELETE FROM clientes WHERE id_cliente = 1;

DELETE FROM clientes WHERE telefono LIKE '555%';

DELETE FROM clientes WHERE nombre LIKE '%Gómez%';

DELETE FROM clientes WHERE LENGTH(direccion) < 10;

DELETE FROM clientes;

DROP TABLE clientes;


