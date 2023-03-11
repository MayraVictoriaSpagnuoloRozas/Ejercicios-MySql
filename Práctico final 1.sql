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

use laboratory;

select*from client;

insert into client values
(6,"Rogelio", "Rozas", 20-11985362-6, "Colón 96", null),
(7,"Julieta", "Spagnuolo", 27-12729674-5, "Lavalleja 612",null),
(8,"Jano", "Suárez", 20-47958819-0, "Av. Díaz Vélez 3625", null),
(9,"Libertad", "Suárez", 20-56283806-3, "Av. Díaz Vélez 3625", null),
(10,"Jorge", "Rozas", 32-11852147-6, "Miraflores 654", null);

use laboratory;
set SQL_SAFE_UPDATES=0;
update client
set name="José"
where id=1;

set SQL_SAFE_UPDATES=0;
update client
set name= "Pablo", last_name= "Fuentes", cuit= 20-21053119-0
where id=3;

update client
set comments=""
where comments=null;

delete from client where last_name= "Perez";

delete from client where cuit="%0";

select price, price*0.2 as aumento, price +(price*0.2) as total from article where price<= 50;
select price, price*0.15 as aumento, price +(price*0.15) as total from article where price> 50;
select price, price*0.05 as rebaja, price -(price*0.05) as total from article where price>200;

delete from article where stock=0;

select max(amount)
from invoice;

select min(amount)
from invoice;

select min(amount)from invoice  where date >2000 and date <2008;

select date from invoice where date=2016;

select number from invoice where number=3;

select count(*) from invoice;

select amount from invoice where amount>35000 and amount <40000;

select date, count(*) from invoice group by date;

select letter, count(*) from invoice group by letter;