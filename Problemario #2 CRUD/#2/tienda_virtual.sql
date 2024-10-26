CREATE TABLE productos (
    producto_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    categoria VARCHAR(50),
    precio DECIMAL(10, 2),
    stock INT,
    fecha_creacion DATETIME DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE clientes (
    cliente_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(100) UNIQUE,
    fecha_registro DATE DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE pedidos (
    pedido_id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    fecha_pedido DATETIME DEFAULT CURRENT_TIMESTAMP,
    total DECIMAL(10, 2),
    FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id)
    ON UPDATE CASCADE ON DELETE RESTRICT
);
CREATE TABLE detalle_pedidos (
    detalle_id INT AUTO_INCREMENT PRIMARY KEY,
    pedido_id INT,
    producto_id INT,
    cantidad INT,
    precio_unitario DECIMAL(10, 2),
    FOREIGN KEY (pedido_id) REFERENCES pedidos(pedido_id)
    ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (producto_id) REFERENCES productos(producto_id)
    ON UPDATE CASCADE ON DELETE RESTRICT
);

# CREATE

INSERT INTO productos (nombre, categoria, precio, stock) VALUES
    ('Laptop', 'Electrónica', 1200.00, 15),
    ('Smartphone', 'Electrónica', 800.00, 20),
    ('Silla Gamer', 'Muebles', 150.00, 5),
    ('Mouse', 'Accesorios', 25.00, 50),
    ('Teclado', 'Accesorios', 40.00, 35);
    
INSERT INTO clientes (nombre, correo) VALUES
    ('Jorge Pérez', 'juan234Perez@gmail.com'),
    ('Alondra Gómez', 'anAgom3z@hotmail.com'),
    ('Daniel López', 'carlosLopez@tesji.com');

-- Pedido 1
INSERT INTO pedidos (cliente_id, total) VALUES (1, 1300.00);
INSERT INTO detalle_pedidos (pedido_id, producto_id, cantidad, precio_unitario) VALUES
    (1, 1, 1, 1200.00),
    (1, 4, 2, 25.00);

-- Pedido 2
INSERT INTO pedidos (cliente_id, total) VALUES (2, 1150.00);
INSERT INTO detalle_pedidos (pedido_id, producto_id, cantidad, precio_unitario) VALUES
    (2, 2, 1, 800.00),
    (2, 3, 1, 150.00),
    (2, 5, 5, 40.00);

# READ

SELECT producto_id, nombre, precio, stock FROM productos WHERE stock > 10;

SELECT c.nombre, p.pedido_id, p.fecha_pedido, p.total FROM clientes c JOIN pedidos p ON c.cliente_id = p.cliente_id WHERE c.cliente_id = 1;

SELECT dp.producto_id, p.nombre, SUM(dp.cantidad) AS total_vendido FROM detalle_pedidos dp JOIN productos p ON dp.producto_id = p.producto_id GROUP BY dp.producto_id;


# UPDATE

UPDATE productos SET precio = precio * 1.15 WHERE categoria = 'Accesorios';

UPDATE clientes SET correo = 'anaJim3n3z@outlook.com' WHERE cliente_id = 2;

UPDATE productos SET stock = 10 WHERE producto_id = 3;


#DELETE

DELETE FROM productos WHERE stock = 0;

DELETE FROM detalle_pedidos WHERE pedido_id = 1;
DELETE FROM pedidos WHERE pedido_id = 1;

DELETE FROM detalle_pedidos WHERE pedido_id IN (SELECT pedido_id FROM pedidos WHERE cliente_id = 3);
DELETE FROM pedidos WHERE cliente_id = 3;
DELETE FROM clientes WHERE cliente_id = 3;


