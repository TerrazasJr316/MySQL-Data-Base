CREATE TABLE curso(
id_curso INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(30) NOT NULL,
creditos INT CHECK(creditos > 0), 
)