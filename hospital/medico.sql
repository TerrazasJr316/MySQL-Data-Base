CREATE TABLE medico(
id_medico INT PRIMARY KEY,
id_cita INT,
nombre VARCHAR(255),
FOREIGN KEY (id_cita) REFERENCES cita(id_cita)
);