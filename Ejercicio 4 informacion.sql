create database informacion;

use informacion;

create table registros(
id int auto_increment,
nombre varchar (12) not null,
apellido varchar (20) not null,
genero char,
fecha_cumpleaños date not null,
ciudad varchar (15) not null,
telefono int (8) not null,
key (id));

insert into registros(
nombre, apellido, genero, fecha_cumpleaños, ciudad, telefono)
values 

("Jano", "Suárez", "M","2007-06-04", "Bs.As",48572595),
("Libertad", "Suárez", "F","2017-05-19", "Bogotá",52486932),
("Santiago", "Suárez", "M","1979-12-20", "Bombas",58746632),
("Victoria", "Dente", "F","1983-07-05", "Roma",57871236),
("Pablo", "Gómez", "M","1983-06-13", "Madrid",12398745),
("Julieta", "Spagnuolo", "F","1958-10-17", "Barcelona",65874125),
("Jorge", "Rozas", "M","1950-03-26", "Colliure",95412368),
("Mayra", "Spagnuolo", "F","1984-12-03", "Maputo",75484758),
("Joaquín", "Ostúa", "M","2007-04-18", "Kansas",12547896),
("Verónica", "Vais", "F","1975-08-25", "Toronto",45698745),
("Omar", "Anguas", "M","1974-01-02", "La Habana",95478523),
("Lucía", "Mazza", "F","1983-11-10", "Antioquia",47152874);

select * from registros;

select concat(nombre, ",", apellido) As atajo from registros;

select nombre, apellido from registros order by nombre, apellido asc;

select ciudad from registros;

select * from registros where genero = "F";
select * from registros where genero = "M";

select count(*) from registros where genero= "F";

select count(*) from registros where genero= "M";

select day(fecha_cumpleaños) from registros;
select month(fecha_cumpleaños) from registros;
select year(fecha_cumpleaños) from registros;

select ciudad, count(*) from registros group by ciudad;
delete from registros where id= 3;

update registros set apellido ="Salvatore"where id= 7;
update registros set ciudad= "Island"where id= 7;
update registros set teléfono= 2345678 where id= 7;

select * from registros;

delete from registros where apellido like "M%";
delete from registros where nombre like "%o";

select telefono from registros;

alter table registros
add column ubicacion varchar (30);

alter table registros
change column ubicacion direccion varchar(30);

insert into registros(
nombre, apellido, genero, fecha_cumpleaños, ciudad, telefono, direccion)
values 

("Pipi", "Longstalking", "F","2008-07-07", "Bs.As",48572395, "caba"),
("Ricitos", "Deoro", "F","2059-04-15", "Bogotá",52485832, "Lucila"),
("Pedro", "Pascal", "M","1989-11-27", "Bombas",48746632, "Teamo"),
("Noel", "Galagher", "M","1985-07-06", "Roma",32871236, "Liverpool"),
("Kurt", "Cobain", "M","1946-02-12", "Madrid",89398745, "Seattle");

select* from registros;
