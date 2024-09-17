CREATE TABLE autor_libro(
id_autor INT,
id_libro INT,
PRIMARY KEY(id_autor, id_libro),
FOREIGN KEY (id_autor) REFERENCES autor(id_autor),
FOREIGN KEY (id_libro) REFERENCES libro(id_libro)
);
