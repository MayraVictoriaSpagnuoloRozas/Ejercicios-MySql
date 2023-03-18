create database identidad;
use identidad;

create table persona(
id_persona int auto_increment not null,
nombre varchar(15) not null,
apellido varchar(15) not null,
nacionalidad varchar(20) not null,
genero char(2) not null,
primary key(id_persona)
);
create table cuit(
cuit varchar(12) not null,
id_persona_fk int not null unique,
primary key (cuit),
foreign key (id_persona_fk) references persona (id_persona)
);

insert into persona (nombre, apellido, nacionalidad, genero)
values
("Jano", "Suérez", "Argentina", "M"),
("Libertad", "Suérez", "Argentina", "F"),
("Julieta", "Spagnuolo", "Argentina", "F"),
("Jorge", "Rozas", "Argentina", "M");

insert into cuit(cuit, id_persona_fk)
values
(20479588690,1),
(27568238073,2),
(27122349330,3),
(20106652538,4);

select * from persona;




