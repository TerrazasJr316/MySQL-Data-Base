CREATE TABLE medico_especialidad(
id_especialidad INT,
id_medico INT,
PRIMARY KEY (id_especialidad, id_medico),
FOREIGN KEY (id_especialidad) REFERENCES especialidad(id_especialidad),
FOREIGN KEY (id_medico) REFERENCES medico(id_medico)
);