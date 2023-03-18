create database supermercado;
use supermercado;

create table factura(
id_factura int auto_increment not null,
producto varchar(20) not null,
cantidad varchar(50) not null,
primary key(id_factura)
);
create table cliente(
id_cliente int auto_increment not null,
nombre varchar(20) not null,
apellido varchar(20) not null,
direccion varchar(20) not null,
primary key(id_cliente)
);

create table factura_cliente(
id_factura_fk int not null,
id_cliente_fk int not null
);
alter table factura_cliente add constraint factura_cliente_fk0 foreign key (id_factura_fk) references factura (id_factura);
alter table factura_cliente add constraint factura_cliente_fk1 foreign key (id_cliente_fk) references cliente (id_cliente);
use supermercado;

insert into factura(producto, cantidad)
values
("Arróz","1");

select*from factura;

insert into cliente (nombre, apellido, direccion)
values
("Jano", "Suárez", "Díaz Vélez, 3625");

select*from cliente;

insert into factura_cliente(id_factura_fk, id_cliente_fk)
values
(1,1);
 insert into factura (producto, cantidad)
 values
 ("Fideos","1");
 
 select*from factura;
 insert into factura_cliente (id_factura_fk, id_cliente_fk)
 values
 (2,1);
 
 select*from factura_cliente;