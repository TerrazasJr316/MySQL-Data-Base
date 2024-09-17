CREATE TABLE isbn(
id_isbn INT PRIMARY KEY,
id_libro INT,
isbn INT,
FOREIGN KEY (id_libro) REFERENCES libro(id_libro)
);
