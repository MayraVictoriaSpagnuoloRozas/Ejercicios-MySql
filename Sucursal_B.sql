create database Sucursal_B;

use Sucursal_B;

create table Tiendas(
id_tienda int,
Nombre varchar(15) not null,
Direccion varchar(25) not null,

primary key(id_tienda)
);

create table Productos(
id_producto int not null,
id_Tienda int not null,
nombre varchar(29) not null,
precio double not null,

foreign key(id_Tienda) references Tiendas(id_tienda),
primary key(id_producto)
);


insert into Tiendas(id_tienda, Nombre, Direccion)
values(1, 'Zara', 'Av. Corrientes 2836'),
(2, 'Ver', 'Av Sta Fe 1230'),
(3, 'Portsaid', 'Aguirre 1023'),
(4, 'Cheeky', 'Av Cordoba 4042');

insert into Productos(id_producto, id_Tienda, nombre, precio)
values(1, 2, 'Vestido', 18000),
(2, 1, 'Jean', 12000),
(3, 3, 'Sweater', 24000),
(4, 4, 'Sacón', 40000),
(5, 3, 'Calza', 3000);

select * from Tiendas;

select * from Productos;

SELECT 
T.nombre ,T.direccion,
P.precio
from tiendas T 
JOIN productos P 
ON T.id_tienda = P.id_tienda
where P.precio > 1000;

SELECT concat(T.nombre, ' - ' ,T.direccion) as 'Tiendas',
P.precio
from tiendas T 
JOIN productos P 
ON T.id_tienda = P.id_tienda
where P.precio > 1000;

