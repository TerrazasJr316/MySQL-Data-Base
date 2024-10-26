CREATE TABLE usuarios(
    idUsuario INT PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(100) UNIQUE NOT NULL CHECK(email LIKE "%_@_%._%"),
    password VARCHAR(15) NOT NULL CHECK(LENGTH(password)>=8)
);

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

INSERT INTO usuarios VALUES(
    DEFAULT,
    "josueterrazasmendoza@gmail.com",
    "42526998"
);

