create database laboratory;
use laboratory;

create table invoice (
id int auto_increment,
letter char not null,
number int (5) zerofill not null,
date date not null,
amount int not null,
primary key (id)
);
insert into invoice (
letter, number, date, amount)
values
("B", 1, "2011-11-18", 500),
("B", 2, "2012-09-25", 200),
("B", 3, "2011-01-01",3020),
("B", 4, "2016-11-18", 1200),
("B", 5, "2023-03-08", 3300);

create table article(
id int auto_increment,
name varchar(50) not null,
price double not null default 0,
stock int not null,
primary key (id)
);
insert into article( name, price, stock)
values
("Cinta", 110, 50),
("Espatula", 20, 22),
("Fratas", 35, 28),
("Regla", 20, 78),
("Tenaza", 12, 13);

create table client (
id int auto_increment,
name varchar(50) not null,
last_name varchar(50) not null,
cuit char(16) not null,
adress varchar(100) not null,
comments longtext,
primary key (id)
);
insert into client( name, last_name, cuit, adress, comments)
values
("Mario", "Perez", 20-14987008-8, "Aguero 635", null),
("Jorge", "Rios", 20-37562854-5, "Nazca 1532", null),
("Valeria", "Lagos", 20-25487418-8, "Chipre 5", null),
("Natalia", "Peña", 20-25982665-2, "Jufré 3651", null),
("Juan", "Khorn", 20-23587171-9, "Belgrano 6525", null);

select price from article where price >100;
select price from article where price >20 and price <40;
select price from article where price >40 and price <60;
select price, stock from article where price =20 and stock>30;
select price from article where price=12 or price= 20 or price= 30;
select price from article where price= 10 or price=110;

select price, name from article order by price desc , name desc;





