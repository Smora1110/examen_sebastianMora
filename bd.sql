CREATE DATABASE campus;
USE campus;
CREATE TABLE metodo_pago (
    id_metodo_pago INT PRIMARY KEY AUTO_INCREMENT,
    tipo VARCHAR(25) NOT NULL
    
);
CREATE TABLE categoria (
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(25) NOT NULL
    
);
CREATE TABLE libro (
    id_libro INT PRIMARY KEY AUTO_INCREMENT,
    isbn VARCHAR(25) NOT NULL,
    titulo VARCHAR(25) NOT NULL,
    autor VARCHAR(25) NOT NULL,
    fecha_publicacion DATE NOT NULL,
    editorial VARCHAR(25) NOT NULL,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria)
    
);
CREATE TABLE inventario (
    id_inventario INT PRIMARY KEY AUTO_INCREMENT,
    id_libro INT,
    stick INT NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (id_libro) REFERENCES libro(id_libro)
    
);
CREATE TABLE cliente (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(25) NOT NULL,
    apellido VARCHAR(25) NOT NULL,
    correo VARCHAR(25) NOT NULL,
    direccion VARCHAR(25) NOT NULL,
    telefono VARCHAR(25) NOT NULL
    
);
CREATE TABLE pedido (
    id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT,
    monto DECIMAL(10,2) NOT NULL,
    id_metodo_pago INT,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_metodo_pago) REFERENCES metodo_pago(id_metodo_pago)
    
);
CREATE TABLE pedido_libro (
    id_pedido_libro INT PRIMARY KEY AUTO_INCREMENT,
    id_pedido INT,
    id_libro INT,
    cantidad INT NOT NULL,
    FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido),
    FOREIGN KEY (id_libro) REFERENCES libro(id_libro)
    
);