create database registros;

use registros;

create table registros_personas(
id int auto_increment,
nombre varchar(10) not null,
apellido varchar (10) not null,
fecha_cumpleaños date not null,
estado_civil varchar (10)not null,
ciudad varchar (10) not null,
primary key(id)
);

insert into registros_personas(
 nombre, apellido, fecha_cumpleaños, estado_civil, ciudad)
values
('Libertad', 'Suarez',19-05-17,'Soltero','Buenos'),
('Jano', 'Suarez',06-04-07,'Soltero','Buenos'),
('Amanda' ,'Saurí',17-11-92,'Soltero','Buenos'),
('Jorge' ,'Rozas',26-03-53,'Divorciado','Mar'),
('Santiago' ,'Suarez',20-12-79,'Divorciado','San'),
('Pablo' ,'Gomez',05-07-85,'Casado','Lincoln'),
('Mariana' ,'Gomez',13-06-83,'Divorciado','Dolores'),
('Florencia' ,'Romera',24-04-83,'Casado','Bogotá');

select * from registros_personas;
select nombre, apellido from registros_personas;

select nombre, apellido
from registros_personas
order by nombre, apellido asc;

select * from registros_personas
where estado_civil= "Casado";

select * from registros_personas
where estado_civil= "Soltero";

select * from registros_personas
where apellido= "Baez";

select * from registros_personas
where apellido= "Suárez" and estado_civil= "Soltero";

insert into registros_personas 
(nombre, apellido, fecha_cumpleaños,estado_civil,ciudad)
values ('Victoria' ,'Dente',09-05-83,'Casado','Bs.As');

update registros_personas
set apellido="Moldavsky"
where id= 5;

delete from registros_personas
where id=3;

select * from registros_personas
where id=3 and id=4;

select * from registros_personas
where nombre= "A%";

select * from registros_personas
where apellido="%z";

delete from registros_personas where apellido like "M%";

truncate table registros_personas;

insert into registros_personas(
 nombre, apellido, fecha_cumpleaños, estado_civil, ciudad)
values
('Libertad', 'Suarez',19-05-17,'Soltero','Buenos'),
('Jano', 'Suarez',06-04-07,'Soltero','Buenos'),
('Amanda' ,'Saurí',17-11-92,'Soltero','Buenos'),
('Jorge' ,'Rozas',26-03-53,'Divorciado','Mar'),
('Santiago' ,'Suarez',20-12-79,'Divorciado','San'),
('Pablo' ,'Gomez',05-07-85,'Casado','Lincoln'),
('Mariana' ,'Gomez',13-06-83,'Divorciado','Dolores'),
('Florencia' ,'Romera',24-04-83,'Casado','Bogotá');

update registros_personas
set estado_civil="Casado"
where id= 5;

select * from registros_personas;

update registros_personas
set estado_civil="Casado"
where id= 2;
update registros_personas
set ciudad="Bogotá"
where id= 2;

select * from registros_personas;

update registros_personas
set nombre= "Alberto" 
where id=6;
update registros_personas
set apellido= "Sansino" 
where id=6;

select * from registros_personas;

select nombre from registros_personas limit 5;

select length(nombre) from registros_personas limit 5;
select length(nombre) As nombre_length from registros_personas limit 5;
select upper(nombre) from registros_personas limit 5;
select upper(nombre) As nombre_upper from registros_personas limit 5;
select lower(nombre) from registros_personas limit 5;
select lower(nombre) As nombre_lower from registros_personas limit 5;
select concat(nombre, ",", apellido)from registros_personas limit 5;
select concat(nombre, ",", apellido) As nombre_apellido from registros_personas limit 5;
select count(*) from registros_personas;
select count(*)  as recuento from registros_personas;
select * from registros_personas where estado_civil= "Casado";
select count(*) from registros_personas where estado_civil= "Casado";
select count(*) as registro_casados from registros_personas where estado_civil= "Casado";
select fecha_cumpleaños from registros_personas limit 5;
select day(fecha_cumpleaños) from registros_personas limit 5;
select month(fecha_cumpleaños) as mes_cumple from registros_personas limit 5;
select estado_civil, count(*) as recuento from registros_personas group by estado_civil;
select estado_civil, count(*) as recuento from registros_personas group by estado_civil having estado_civil is not null;