create database ada;

use ada;

create table person(
id int auto_increment,
p_name varchar (20) not null,
last_name varchar (20) not null,
civil_status varchar (20),
primary key (id)
);


insert into person(
p_name,last_name,civil_status)
values
('Libertad', 'Suarez', 'Soltera'),
('Jano', 'Suarez','Soltero'),
('Julieta' ,'Spagnuolo', 'Divorciada');

select * from person order by p_name desc;