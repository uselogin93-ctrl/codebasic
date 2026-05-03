create database library;
use library;
create table lib(
book_id int primary key,
title varchar(40),
author varchar(30),
price int,
category varchar(50)
);

insert into lib values
(101,"book1","a1",600,"comic"),
(102,"book2","a2",300,"comedy"),
(103,"book3","a3",900,"horror"),
(104,"book4","a4",400,"science");

select*from lib;
select*from lib where price >500;
select *from lib order by price asc;
select count(book_id) from lib;
select max(price)from lib;
select *from lib  where author = "a4";
select *from lib where category like "h%";