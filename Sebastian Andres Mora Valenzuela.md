# Sebastian Andres Mora Valenzuela

Se nos entrega la siguiente tabla para realizar el modelo conceptual, para esto vamos a analizarlo

<a href="https://ibb.co/sd7mKHh3"><img src="https://i.ibb.co/W4CxktQK/Captura-desde-2026-02-04-06-56-01.png" alt="Captura-desde-2026-02-04-06-56-01" border="0"></a>

## Modelo Conceptual

Se obtiene el siguiente modelo conceptual básico sin aplicar aun nacionalización, en el cual se puede observar dos entidades con sus diferentes atributos

<a href="https://ibb.co/4ntBbRgC"><img src="https://i.ibb.co/Vc9XFYpb/conceptual-drawio.png" alt="conceptual-drawio" border="0" /></a>

## Normalización

### Primera forma normal

Para cumplir la primera forma normal se decidió separar nombre del cliente en nombre y apellido, esto no se realizó con autores debido a que estos pueden usar acronimos u otros apodos entonces no aplica

<a href="https://ibb.co/pHw4Q3X"><img src="https://i.ibb.co/DBWwY7K/Captura-desde-2026-02-04-07-07-45.png" alt="Captura-desde-2026-02-04-07-07-45" border="0"></a>

### Segunda forma normal

Para la segunda forma normal se creó la entidad pedido para separar los atributos que no pertenecen completamente a la entidad cliente igualmente que con la entidad inventario se separó de la entidad libro

<a href="https://ibb.co/3yNc91TK"><img src="https://i.ibb.co/nscjNrwp/Captura-desde-2026-02-04-08-03-17.png" alt="Captura-desde-2026-02-04-08-03-17" border="0"></a>

### Tercera forma normal

Para la tercera normalización se creó una tabla intermedia para quitar las relaciones muchos a muchos y se crearon tablas para datos que se pueden repetir constantemente como lo son categoría de libros y metodo de pago

<a href="https://ibb.co/5hDKtzdy"><img src="https://i.ibb.co/v45XgrbG/Captura-desde-2026-02-04-08-11-34.png" alt="Captura-desde-2026-02-04-08-11-34" border="0"></a>



## Modelo UML-ER

<a href="https://ibb.co/kgF6QDr3"><img src="https://i.ibb.co/SXp7Rm1Q/Captura-desde-2026-02-04-08-24-29.png" alt="Captura-desde-2026-02-04-08-24-29" border="0"></a>