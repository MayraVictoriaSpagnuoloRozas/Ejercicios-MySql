create database sucursal_A;
use sucursal_A;

create table clientes(
id_cliente int,
nombre varchar(15) not null,
apellido varchar(25) not null,
primary key(id_cliente)
);
create table pedidos(
id_pedido int not null,
Id_cliente int,
fecha date not null,
primary key(id_pedido),
foreign key (Id_cliente) references clientes(id_cliente)
);
insert into clientes(id_cliente, nombre,apellido)
values
(1, "Victoria", "Dente"),
(2, "Cristina", "Del Pizzo"),
(3, "Alberto", "Sansobrino"),
(4, "Malcolm", "Mancusso"),
(5, "Juan Pablo", "DiLeo");

insert into pedidos(id_pedido, id_cliente, fecha)
values
(1,3,"2023-03-24"),
(2,3,"2023-03-25"),
(3,1,"2023-03-26"),
(4,4,"2023-03-27"),
(5,2,"2023-03-28"),
(6,5,"2023-03-29");

select* from clientes;
select* from pedidos;
select * from clientes C join pedidos P on C.id_cliente= P.Id_cliente;

select C.nombre, C. apellido, P. fecha
from clientes C
join pedidos P 
on C. id_cliente= P. Id_cliente
where month (P. fecha)= 3 and year (P. fecha)=2023;
