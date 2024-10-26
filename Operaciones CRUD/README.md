# OPERACIONES CRUD EN MYSQL

Las operaciones *CRUD* son un conjnto de cuatro operaciones fundamentales, en el manejo de bases de datos y aplicaciones web. *CRUD* es un acronimo que representa las siguientes operaciones:

- **CREATE (crear)**
- **READ (leer)**
- **UPDATE (actualizar)**
- **DELETE (borarr)**

**Primero crear una tabla**

```sql
CREATE TABLE usuarios(
    idUsuario INT PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(100) UNIQUE NOT NULL CHECK(email LIKE "%_@_%._%"),
    password VARCHAR(15) NOT NULL CHECK(LENGTH(password)>=8)
);
```

## CREATE

La operación *crear* es responsable de insetar nuevos datos en la base de datos en lenguaje SQL esto se realiza con la sentencia `INSERT INTO` y en el caso de SQL `INSERT` también funciona. el proposito de la operación es añadir el nuevo registro a una tabla

```sql
-- Ejemplo de una inserción valida usando todos los campos
INSERT INTO usuarios VALUES(
    1,
    "ejemplo@mail.com",
    "12345678"
);

-- Ejemplo de un inserción valida usando el comando DEFAULT
INSERT INTO usuarios VALUES(
    DEFAULT,
    "ejemplo2@mail.com",
    "abcdefg"
);

-- Ejemplo de una inserción sin incluir el idUsuario
INSERT usuarios(email, password) VALUES(
    "ejemplo3@mail.com",
    "12345678"
);
```

### EJJERCICIOS

Identifica los tipos de errores que pueden salir en esta tabla.
Inserta cuatro registros nuevos en un solo insert

## READ

La operacion *leer* es utilizada para consultar o recuperar datos de la base de datos, esto no modifica los datos simplemente los extrae. en MySQL esta operación se realiza con la sentencia `SELECT`

```sql
-- Ejemplo de una consulta para todos los datos en una tabla
SELECT * FROM usuarios;

-- Ejemplo de cunsulta para un registro en específico a través del idUsuario
SELECT * FROM usuarios WHERE idUsuario = 1;

-- Ejemplo de consulta para un registro con un email en específico
SELECT * FROM usuarios WHERE email = "ejemplo@mail.com";

-- Ejemplo de cosulta con solo los campos email y password
SELECT email, password FROM usuarios;

-- Ejemplo de consulta con un condicional lógico
SELECT * FROM usuarios WHERE LENGTH(password)>=9;
```

### EJERCICIO

Realiza una consulta que muestre solo el email pero que consida con una contraseña de mas de 8 caracteres y otra que realice una consulta a los id pares.

## UPDATE

La operación *actualizar* se utiliza para modificar registros existentes en la base de datos. Esto se hace con la sentencia `UPDATE`

```sql
-- Ejemplo para actualizar la contraseña por su id
UPDATE usuarios SET password = "a1b2c3d4e5" WHERE idUsuario = 1;

-- Ejemplo para actulizar el email y password de un usuario en especcífico
UPDATE usuarios SET email = "ejemplo4@gmail.com", password = "a1b2c3d4e5" WHERE idUsuario = 1;
```

### Ejercicio

Intenta actualizar registro con valores que violen las restricciones, mínimo 3.

## DELETE

La operaación *eliminar* se usa para borrar registro de la base de datos; esto se realiza con la sentencia `DELETE`:

**Debemos ser muy cuidadosos con esta operación, ya que una vez que los datos son elimnados no pueden ser recuperador**

```sql
-- Eliminar el usuario por el id
DELETE FROM usuarios WHERE idUsuario = 4;

-- Eliminar los usuario con el email específico
DELETE FROM usuarios WHERE email = "ejemplo4@gmail.com";
```

### Ejercicios

- Eliminar usuarios cuyo email contenga uno o mas 5's.
- Eliminiar usuarios que contenga letras mayusculas usando expresion regulares (REGEXP)
- Eliminar usuarios con contraseñas que contengan solo números con expresiones regulares
- Eliminar ususarios con correos que no tengan el dominio 'gmail'