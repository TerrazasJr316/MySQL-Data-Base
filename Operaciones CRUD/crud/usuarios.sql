CREATE TABLE usuarios(
    idUsuario INT PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(100) UNIQUE NOT NULL CHECK(email LIKE "%_@_%._%"),
    password VARCHAR(15) NOT NULL CHECK(LENGTH(password)>=8)
);

# CREATE

INSERT INTO usuarios VALUES(
    1,
    "josueterrazasmendoza@gmail.com",
    "42526998"
);

INSERT INTO usuarios VALUES(
    DEFAULT,
    "carlosbarron703@gmail.com",
    "JR316981"
);

INSERT usuarios(email, password) VALUES(
    "terrazasjosue0@gmail.com",
    "425269JR"
);

# Inserta cuatro registros nuevos en un solo insert

INSERT INTO usuarios VALUES
	  (DEFAULT, "rodriguezmandozaluis@gmail.com", "46598345"),
		(DEFAULT, "mendozajosue@gmail.com", "45981409"),
		(DEFAULT, "torresjuan98@gmail.com", "67234098"),
		(DEFAULT, "sanchezpedro74@gmail.com", "19456879");
		
		
		
# READ

SELECT * FROM usuarios;

SELECT * FROM usuarios WHERE idUsuario = 1;

SELECT * FROM usuarios WHERE email = "ejemplo@mail.com";

SELECT email, password FROM usuarios;

SELECT * FROM usuarios WHERE LENGTH(password)>=9;

/*
Realiza una consulta que muestre solo el email pero que coincida con una contraseña de mas
de 8 caracteres y otra que realice una consulta a los id pares. 
*/

SELECT email FROM usuarios WHERE LENGTH(password) > 8;
SELECT email FROM usuarios WHERE MOD(idUsuario, 2) = 0;	

# UPDATE

UPDATE usuarios SET password = "a1b2c3d4e5" WHERE idUsuario = 1;
UPDATE usuarios SET email = "ejemplo4@email.com", password = "a1b2c3d4e5" WHERE idUsuario = 1;

# Intenta actualizar registro con valores que violen las restricciones, mínimo 3.

UPDATE usuarios SET email = 'correo_invalido' WHERE idUsuario = 1;
UPDATE usuarios SET password = NULL WHERE idUsuario = 2;
UPDATE usuarios SET email = 'josueterrazasmendoza@gmail.com' WHERE idUsuario = 3;

# DELETE

DELETE FROM usuarios WHERE idUsuario = 1;
DELETE FROM usuarios WHERE email = "terrazasjosue0@gmail.com";

DELETE FROM usuarios WHERE email REGEXP '5+';
DELETE FROM usuarios WHERE email REGEXP '[A-Z]';
DELETE FROM usuarios WHERE password REGEXP '^[0-9]+$';
DELETE FROM usuarios WHERE email NOT REGEXP '@gmail\\.com$';



