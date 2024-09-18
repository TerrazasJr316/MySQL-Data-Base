CREATE TABLE cita(
id_cita INT PRIMARY KEY,
id_paciente INT,
id_medico INT,
hora_cita_ TIME,
FOREIGN KEY (id_paciente) REFERENCES paciente(id_paciente),
FOREIGN KEY (id_medico) REFERENCES medico(id_medico)
);