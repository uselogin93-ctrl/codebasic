use cumtomer_db; -- use to get in to customer_db database
create table customers(
customer_id int primary key,
first_name varchar(50),
last_name varchar(50),
phone varchar(50),
country varchar(50)
); -- create table to store customer information
insert into customers values
(1,"mahesh", "shr" ,"817-646-8833","USA"),
(2,"mehatab","shk", "412-862-334", "UAE"),
(3,"sahil", "kmb", "332-463-9988","USA"),
(4,"krit","yad","443-776-8873","UK"),
(5,"shreya", "UTK", "776-223-1234","UK"); -- insert values into customers table
select * from customers; -- select all records from customers table
drop database customer_db; -- drop customer_db to remove all the data and tables created in the database
create database customer_db2; -- create customer_db2 to store customer information
use customer_db2; -- use to get in to customer_db2 database
create table customer(
customer_id int primary key,
first_name varchar(50),
last_name varchar(50),
age int,
country varchar(50)
); -- create table to store customer information
insert into customer value
(1,"john","doe","31","USA"),
(2,"robert","luna","21","usa"),
(3,"david","robsion","22","uk"),
(4,"john","robsion","25","uk"),
(5,"betty","doe","28","usa"); -- insert values into customer table
select max(age) from customer; -- select max age from customer table
select min(age) from customer; -- select min age from customer table
select * from customer; -- select all records from customer table
select * from customer where age=(select min(age) from customer); -- select all records from customer table where age is equal to min age from customer table
select * from customer where age between 21 and 31 limit 1; -- select all records from customer table where age is between 21 and 31 and limit the result to 1 record
select * from customer where age between 1 and 100 limit 1 offset 4; -- select all records from customer table where age is between 1 and 100 and limit the result to 1 record and skip the first 4 records
select count(country) from customer where country= "uk"; -- select count of country from customer table where country is "uk" but it will give error because we are counting the country column which is a numeric value and we should use count(*) instead of count(country) to get the count of records where country is "uk"
select count(*) from customer where country= "uk"; -- select count of all records from customer table where country is "uk" and it will give the correct result because we are counting all records where country is "uk"
select count(country="uk") from customer; -- error 
select * from customer where last_name = "doe"; -- select records from customer table where last_name is "doe"
select first_name, last_name from customer where country ="usa" and last_name= "Doe"; -- select first_name and last_name from customer table where country is "usa" and last_name is "Doe"
select first_name, last_name from customer where not country= "Usa"; -- select first_name and last_name from customer table where country is not "Usa"
select * from customer where (country="usa" or country="uk")and age<26; -- select all records from customer table where country is "usa" or "uk" and age is less than 26;
select * from customer where not country ="usa" and not last_name= "Doe"; -- select all records from customer table where country is not "usa" and last_name is not "Doe"
select distinct country from customer; -- select distinct country from customer table
select distinct first_name, country from customer; -- select distinct first_name and country from customer table
select count(distinct country) from customer; -- select count of distinct country from customer table
select distinct * from customer; -- select distinct all records from customer table
select count(distinct country) from customer; -- select count of distinct country from customer table
select customer_id as c_id,last_name as l_n from customer; -- select customer_id and last_name from customer table and rename them as c_id and l_n respectively
select concat(first_name,' ',last_name)as full_name from customer; -- select first_name and last_name from customer table and concatenate them as full_name
select first_name,age from customer limit 2; -- select first_name and age from customer table and limit the result to 2 records
select first_name,age from customer limit 2 offset 3; -- select first_name and age from customer table and limit the result to 2 records and skip the first 3 records
select Top 2 first_name,age from customer; -- select first_name and age from customer table and limit the result to 2 records using Top keyword
select * from customer fetch first 2 only; -- select all records from customer table and limit the result to 2 records using fetch first keyword
select * from customer where country in ("USA","UK"); -- select all records from customer table where country is "USA" or "UK"
select first_name,country from customer where "USA" in(country); -- select first_name and country from customer table where "USA" is in country
select * from customer where country not in ("UK","Uae"); -- select all records from customer table where country is not "UK" or "Uae"
create table orders(
order_id int primary key,
item varchar(50),
amount varchar(50),
customer_id varchar(50)
); -- create orders table to store order information
insert into orders value
(1,"keyboard","400","4"),
(2,"mouse","300","4"),
(3,"monitor","12000","4"),
(4,"keyboard","400","1"),
(5,"mouse_pad","250","2"); -- insert values into orders table
select * from orders where amount between 200 and 600; -- select all records from orders table where amount is between 200 and 600
select * from orders where amount not between 300 and 500; -- select all records from orders table where amount is not between 300 and 500
select * from orders where item between 'I' and 'L'; -- select all records from orders table where item is between 'I' and 'L' in alphabetical order
drop table orders; -- drop orders table to remove the table and all the data stored in it
create table orders(
order_id int primary key,
item varchar(50),
amount varchar(50),
customer_id varchar(50),
order_date date
); -- create orders table to store order information with order_date column
insert into orders value
(1,"keyboard","400","4","2019-01-01"),
(2,"mouse","300","4","2020-01-01"),
(3,"monitor","12000","4","2020-06-06"),
(4,"keyboard","400","1","2021-06-06"),
(5,"mouse_pad","250","2","2022-11-10"); -- insert values into orders table with order_date
select * from orders where order_date between'2020-01-01' and"2021-06-06"; -- select all records from orders table where order_date is between '2020-01-01' and '2021-06-06'
select sum(amount) from orders; -- select sum of amount from orders table
select * from customer; -- select all records from customer table
select * from orders; -- select all records from orders table
 select sum(amount) from orders where customer_id= 4; -- select sum of amount from orders table where customer_id is 4
use customer_db2; -- using the customer_db2 agian 
drop table orders; -- drop the orders tables
create table orders(
order_id int primary key,
item varchar(50),
amount varchar(50),
customer_id int, -- while make references we should have some data type of foreign key 
order_date date,
foreign key(customer_id) references customer(customer_id) -- connecting foreign kry in this tables
); -- editing the tables data 
create database employee_db;-- create employee_db to store employee information
use employee_db;-- create employee_db to store employee information
drop table employee;-- drop employee table to remove the table and all the data stored in it if exist
create table employee(
emp_id int primary key,
f_n varchar(50),
L_n varchar(50),
dep_n varchar(50), -- while make references we should have some data type of foreign key 
email varchar(50) default"null"
); -- create employee table to store emp  loyee information with email column which can have null values
insert into employee value
(1,"peter","Doe","operation","peter@gmail.com"),
(2,"magen","moral","finance",""),
(3,"rose","Bailey","operation","rose@gmail.com"),
(4,"linda","Bailey","finance",""),
(5,"mary","Doe","sales","");  -- insert values into employee table with email column having null values
select * from employee where email is null;-- select all records from employee table where email is null
select * from employee where email is not null;-- select all records from employee table where email is not null
select count(*) from employee where email is null;-- count all records from employee table where email is null
select count(*) from employee where email is not null;-- count all records from employee table where email is not null

-- 10-03-2026
create database collage_db; -- create collage_db to store collage information
use collage_db; -- use collage_db to get in to collage_db database
create table collage(
Roll_no tinyint primary key,-- using constraint to set primary key for Roll_no column
Name varchar(30) default "name", -- using constraint to set default value for Name column
Marks tinyint not null check(marks>=35), -- using constraint to set check constraint for Marks column to ensure that marks should be greater than or equal to 35 and not null
collage_code varchar(100) -- using constraint to set collage_code column to store collage code information
); -- create collage table to store collage information with default value for Name column and check constraint for Marks column
insert into collage value
(1,"peter",70,"Fe12"),
(2,default,63,"Fe12"),
(3,"rose",70,"Fe12"),
(4,"linda",53,"Fe12"),
(5,"mary",89,"Fe12");-- insert values into collage table with default value for Name column and check constraint for Marks column
select * from collage; -- select all records from collage table
drop table collage; -- drop collage table to remove the table and all the data stored in it
drop table customer; -- drop customer table to remove the table and all the data stored in it
drop table orders; -- drop orders table to remove the table and all the data stored in it
use customer_db2; -- use to get in to customer_db2 database
create table customer(
customer_id int primary key,
first_name varchar(50),
last_name varchar(50),
age int,
country varchar(50)
); -- create table to store customer information
insert into customer value
(1,"john","doe","31","USA"),
(2,"robert","luna","21","usa"),
(3,"david","robsion","22","uk"),
(4,"john","robsion","25","uk"),
(5,"betty","doe","28","usa"); -- insert values into customer table
select max(age) from customer; -- select max age from customer table
select avg(age)from customer; -- select avg age from customer table
select min(age) from customer; -- select min age from customer table
select * from customer; -- select all records from customer table
select * from customer order by country asc; -- select all records from customer table ordered by country in ascending order
select * from customer order by country desc; -- select all records from customer table ordered by country in descending order
select * from customer order by first_name, age ; -- select all records from customer table ordered by first_name and age
select last_name, age, country from customer where country not in ("UK") order by last_name desc; -- select last_name and age from customer table where country is not "UK" ordered by last_name descending
select last_name, age, country from customer where not country="UK" order by last_name desc; -- select last_name and age from customer table where country is not "UK" ordered by last_name descending
select country,COUNT(customer_id) from customer group by country; -- select country and count of customers from customer table grouped by country
select first_name,country from customer where country like 'uk'; -- select first_name and country from customer table where country is like 'uk'
select first_name,country from customer where country not like 'usa'; -- select first_name and country from customer table where country is not like 'usa'
select age,count(age) from customer group by age; -- select age and count of customers from customer table grouped by age
select * from customer where age=(select min(age) from customer); -- select all records from customer table where age is equal to the minimum age
select * from customer where age between 21 and 31 limit 1; -- select one record from customer table where age is between 21 and 31
select * from customer where age between 1 and 100 limit 1 offset 4; -- select one record from customer table where age is between 1 and 100, skipping the first 4 records
select count(country) from customer where country= "uk"; -- select count of country from customer table where country is "uk"
create table orders(
order_id int primary key,
item varchar(50),
amount varchar(50),  
customer_id varchar(50),
order_date date
); -- create orders table to store order information with order_date column
insert into orders value
(1,"keyboard","400","4","2019-01-01"),
(2,"mouse","300","4","2020-01-01"),
(3,"monitor","12000","4","2020-06-06"),
(4,"keyboard","400","1","2021-06-06"),
(5,"mouse_pad","250","2","2022-11-10"); -- insert values into orders table
select sum(amount) from orders; -- select sum of amount from orders table
select * from customer; -- select all records from customer table
select * from orders; -- select all records from orders table
select sum(amount) from orders where customer_id= 4; -- select sum of amount from orders table where customer_id is 4
select count(item) from orders group by item; -- select count of items from orders table grouped by item
select count(order_id),item from orders group by item; -- select count of order_id and item from orders table grouped by item
select customer_id,sum(amount) from orders group by customer_id; -- select customer_id and sum of amount from orders table grouped by customer_id

-- 16-03-2026 --
 select * from customer where country like "us_"; -- select all records from customer table where country starts with "us" followed by one character
select * from customer where last_name like "%r"; -- select all records from customer table where last_name ends with "r"
select * from customer where last_name like "r%"; -- select all records from customer table where last_name starts with "r"
select* from customer where country like "U[ka]%"; -- select all records from customer table where country starts with "U" followed by "k" or "a"
select* from customer where country like "uk%" or "Ua%"; -- select all records from customer table where country starts with "uk" or "Ua"
select* from customer where last_name like "[!dr]%"; -- select all records from customer table where last_name does not start with "d" or "r"

2select* from customer where last_name not like "d%" and last_name not like"r%"; -- select all records from customer table where last_name does not start with "d" and does not start with "r"
select first_name from customer where age=(select max(age) from customer); -- select first_name from customer table where age is the maximum age
select first_name,age from customer ORDER BY age DESC LIMIT 1; -- select first_name and age from customer table ordered by age descending and limit to 1 record
CREATE VIEW us_customer AS SELECT customer_id,first_name,last_name FROM customer WHERE country="USA"; -- create view to select customer_id, first_name and last_name from customer table where country is "USA"
drop View us_customer; -- drop view to remove the view created in the database
use customer_db2; -- use to get in to customer_db2 database
select amount, 
	case 
		when amount<10000 then "largest" 
		when amount>10000 then "small"  
	end as al_name 
from orders; -- select amount from orders table and categorize it as 'largest' if < 10000 or 'small' if > 10000
select country,
	case
		when country='uk' then "united kingdom"
		when country='usa' then "united state of america"
		else "unknow"
	end as full_country
from customer; -- select country from customer table and display full country name using case statement
select age,
	case
		when age>18 then "able to vote"
		when age<18 then "not able to vote"
		else age=18 
	end as vote_list
from customer; -- select age from customer table and determine voting eligibility
select age,
	case
		when age>20 then "able to vote"
		when age<20 then "not able to vote"
		else age=20 
	end as vote_list
from customer; -- select age from customer table and determine voting eligibility
select first_name,count(age) from customer GROUP BY first_name having count(age)=2; -- select first_name and count of age from customer table grouped by first_name
select first_name, count(age) from customer group by first_name having count(age)=1; -- select first_name and count from customer table group by first_name having count greater than 1
select count(customer_id), country from customer group by country having count(customer_id)>1; -- select count of customers and country from customer table group by country having count greater than 1
SELECT customer_id, SUM(amount) FROM orders GROUP BY customer_id HAVING SUM(amount) < 500; -- select customer_id and sum of amount from orders table group by customer_id having sum of amount less than 500

SELECT customer.customer_id, orders.customer_id from customer JOIN orders ON customer.customer_id=orders.customer_id; 

SELECT customer.customer_id, customer.first_name, orders.item, orders.customer_id 
	from customer JOIN orders ON customer.customer_id=orders.customer_id;  
    
SELECT customer.customer_id, customer.first_name, orders.item, orders.amount, orders.customer_id 
	from customer LEFT JOIN orders ON customer.customer_id=orders.customer_id; 
    
SELECT customer.customer_id, customer.first_name, orders.item, orders.amount, orders.customer_id 
	from customer RIGHT JOIN orders ON customer.customer_id=orders.customer_id; 
    
SELECT customer.customer_id, customer.first_name, orders.item, orders.amount, orders.customer_id from customer 
	RIGHT JOIN orders ON customer.customer_id=orders.customer_id where orders.amount<=500; 
    
SELECT customer.customer_id, customer.first_name, orders.item, orders.amount, orders.customer_id from customer 
	LEFT JOIN orders ON customer.customer_id=orders.customer_id
	UNION All SELECT customer.customer_id, customer.first_name, orders.item, orders.amount, orders.customer_id from customer 
    RIGHT JOIN orders ON customer.customer_id=orders.customer_id; 
    
select * from customer cross join orders;

SELECT customer.customer_id, customer.first_name, orders.order_id FROM customer CROSS JOIN orders;

create table orders(
order_id int primary key,
item varchar(50),
amount varchar(50),
customer_id int, -- while make references we should have some data type of foreign key 
order_date date,
foreign key(customer_id) references customer(customer_id) -- connecting foreign kry in this tables
);

insert into orders value
(1,"keyboard","400","4","2019-01-01"),
(2,"mouse","300","4","2020-01-01"),
(3,"monitor","12000","4","2020-06-06"),
(4,"keyboard","400","1","2021-06-06"),
(5,"mouse_pad","250","2","2022-11-10");

insert into orders value
(6,"keyboard","400","4","2019-01-01"),
(7,"mouse","-300","4","2020-01-01"),
(8,"monitor","12000","4","2020-06-06"),
(9,"keyboard","-400","1","2021-06-06"),
(10,"mouse_pad","250","2","2022-11-10");

select * from orders;