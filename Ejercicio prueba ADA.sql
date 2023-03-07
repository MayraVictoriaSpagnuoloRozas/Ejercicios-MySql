use ada;
select*from person;

alter table person
add column ciudad varchar(50) not null;

select*from person;

alter table person
change column ciudad direccion varchar(50) not null;

select*from person;

alter table person
drop direccion;

select*from person;

alter table person
rename persona;
select*from persona;