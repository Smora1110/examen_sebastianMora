# Sebastian Andres Mora Valenzuela

Se nos entrega la siguiente tabla para realizar el modelo conceptual, para esto vamos a analizarlo

<a href="https://ibb.co/sd7mKHh3"><img src="https://i.ibb.co/W4CxktQK/Captura-desde-2026-02-04-06-56-01.png" alt="Captura-desde-2026-02-04-06-56-01" border="0"></a>

## Modelo Conceptual

Se obtiene el siguiente modelo conceptual básico sin aplicar aun nacionalización, en el cual se puede observar dos entidades con sus diferentes atributos

<a href="https://ibb.co/v4NJmdb6"><img src="https://i.ibb.co/xqnMGgyt/Captura-desde-2026-02-04-08-48-54.png" alt="Captura-desde-2026-02-04-08-48-54" border="0"></a>

## Normalización

### Primera forma normal

Para cumplir la primera forma normal se decidió separar nombre del cliente en nombre y apellido, esto no se realizó con autores debido a que estos pueden usar acronimos u otros apodos entonces no aplica

<a href="https://ibb.co/cKVCjrLp"><img src="https://i.ibb.co/dsxLR5g3/Captura-desde-2026-02-04-08-49-40.png" alt="Captura-desde-2026-02-04-08-49-40" border="0"></a>

### Segunda forma normal

Para la segunda forma normal se creó la entidad pedido para separar los atributos que no pertenecen completamente a la entidad cliente igualmente que con la entidad inventario se separó de la entidad libro

<a href="https://ibb.co/3yNc91TK"><img src="https://i.ibb.co/nscjNrwp/Captura-desde-2026-02-04-08-03-17.png" alt="Captura-desde-2026-02-04-08-03-17" border="0"></a>

### Tercera forma normal

Para la tercera normalización se creó una tabla intermedia para quitar las relaciones muchos a muchos y se crearon tablas para datos que se pueden repetir constantemente como lo son categoría de libros y metodo de pago

<a href="https://ibb.co/vxVLrwcw"><img src="https://i.ibb.co/8DNPRKmK/Captura-desde-2026-02-04-08-50-47.png" alt="Captura-desde-2026-02-04-08-50-47" border="0"></a>



## Modelo UML-ER

como resultado de haber terminado nuestro modelo conceptual lo realizamos en modelo UML ER para facilitar y agregar los tipos de variables para asi pasar al modelo fisico

<a href="https://ibb.co/kgF6QDr3"><img src="https://i.ibb.co/SXp7Rm1Q/Captura-desde-2026-02-04-08-24-29.png" alt="Captura-desde-2026-02-04-08-24-29" border="0"></a>



```mysql
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
```

de esta forma damos por terminado el examen con su modelo conceptual normalizado y su modelo UML ER