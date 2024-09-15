CREATE TABLE libro(
id_libro INT PRIMARY KEY,
id_isbn INT,
titulo VARCHAR(255),
año_publicación INT,
FOREIGN KEY (id_isbn) REFERENCES isbn(is_isbn)
);