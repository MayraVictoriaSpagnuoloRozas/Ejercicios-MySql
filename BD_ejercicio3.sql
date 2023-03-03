drop table if exists phonebookdb;

create database phonebookdb;

use phonebookdb;

create table contact(
id int,
name varchar(50) not null,
last_name varchar(50) not null,
adress varchar(100) not null,
number_phone varchar(20) not null);

insert into contact(
name, last_name, adress, number_phone)
values
("Libertad","Suárez", "Av. diaz Velez 3625","66986847"),
("Jano","Suárez", "Av. diaz Velez 3625","66986847"),
("Julieta","Spagnuolo", "Lavalleja 612","48572595"),
("Mayra","Spagnuolo", "Av. diaz Velez 3625","1130489311"),
("Marcela","DeLuca", "Montes de Oca 635","49636842");

select * from contact;