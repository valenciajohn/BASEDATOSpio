-- create a table
CREATE TABLE cliente (
  id_cliente INTEGER PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  email VARCHAR(100) UNIQUE NOT NULL,
  fecha_registro DATETIME DEFAULT CURRENT_TIMESTAMP,
  activo BOOLEAN DEFAULT TRUE
);

CREATE TABLE producto (
  id_producto INTEGER PRIMARY KEY,
  nombre VARHAR(100) NOT NULL,
  descripcion TEXT NOT NULL,
  precio DECIMAL(10, 2) NOT NULL,
  fecha_agregado DATE DEFAULT CURRENT_DATE
);

CREATE TABLE ordenes (
  id_orden INTEGER PRIMARY KEY,
  id_cliente INTEGER,
  id_producto INTEGER,
  cantidad INTEGER NOT NULL, 
  fecha_orden DATETIME DEFAULT CURRENT_TIMESTAMP,
  total DECIMAL(10, 2) NOT NULL,
  FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
  FOREIGN KEY (id_producto) REFERENCES cliente(id_producto)
);


-- insert
INSERT INTO cliente (id_cliente, nombre, email) 
VALUES 
(1, 'Carlos Pérez', 'carlos.perez@email.com'),
(2, 'Ana Gómez', 'ana.gomez@email.com');

INSERT INTO producto (id_producto, nombre, descripcion, precio) 
VALUES 
(1, 'Laptop', 'Laptop de 15 pulgadas, 8GB RAM, 256GB SSD', 1200.00),
(2, 'Mouse', 'Mouse inalámbrico, color negro', 25.50),
(3, 'Teclado', 'Teclado mecánico RGB', 75.00);

INSERT INTO ordenes (id_orden, id_cliente, id_producto, cantidad, total) 
VALUES 
(1, 1, 1, 1, 1200.00), 
(2, 1, 2, 2, 51.00),   
(3, 2, 3, 1, 75.00); 

-- fetch some values
SELECT * FROM ordenes