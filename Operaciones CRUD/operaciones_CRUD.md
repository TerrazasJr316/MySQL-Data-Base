# OPERACIONES CRUD EN MYSQL

Las operaciones *CRUD* son un conjnto de cuatro operaciones fundamentales, en el manejo de bases de datos y aplicaciones web. *CRUD* es un acronimo que representa las siguientes operaciones:

- **CREATE (crear)**
- **READ (leer)**
- **UPDATE (actualizar)**
- **DELETE (borarr)**

**Primero crear una tabla**

```
CREATE TABLE usuarios(
    idUsuario INT PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(100) UNIQUE NOT NULL CHECK(email LIKE "%_@_%._%"),
    password VARCHAR(15) NOT NULL CHECK(password>=8)

)
```
