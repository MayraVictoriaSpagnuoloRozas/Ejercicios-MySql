create database supermercadoSA;
use supermercadoSA;

create table sucursal(
id int,
nombre varchar(15) not null,
apellido varchar(25) not null,
primary key (id)
);
create table empleado(
idEmpleado int not null,
nombre varchar(15) not null,
idSucursal int,
foreign key (idSucursal) references sucursal(id),
primary key (idEmpleado)
);
insert into sucursal (id, nombre, apellido)
values
(1, "Luis", "Pattin"),
(2, "Safira", "Luzuriaga"),
(3, "Petra", "Lummens"),
(4, "Marlene", "Igoa");

select * from sucursal;

insert into empleado (idEmpleado,nombre)
values
(1,"Lugano"),
(2,"Flores"),
(3,"Ituzaingo"),
(4,"Floresta"),
(5,"Banfield");

select*from empleado;
select * from empleado E join sucursal S on E.idsucursal = S.id;

select 
E.nombre as "Empleado",
S.nombre as "Sucursal"
from empleado E
left join sucursal S 
on E. idsucursal=S.id;

select 
E.nombre as "Empleado",
S.nombre as "Sucursal"
from empleado E
right join sucursal S 
on E. idsucursal=S.id;

select 
E.nombre as "Empleado",
S.nombre as "Sucursal"
from empleado E
join sucursal S 
on E. idsucursal=S.id where idEmpleado >= 3;

select 
E.nombre as "Empleado",
S.nombre as "Sucursal"
from empleado E
join sucursal S 
on E. idsucursal=S.id where E.nombre like "A%";