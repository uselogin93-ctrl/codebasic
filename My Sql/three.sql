create database collage; -- create database named collage
use collage; -- switch to collage database
create table teacher(
id int primary key,
 name char(20),
 age tinyint
); -- create teacher table
create table students(
id int primary key,
 name char(20),
 age tinyint
); -- create students table
insert into teacher values
(1,"peter",32),
(2,"megan",43),
(3,"rose",29),
(4,"linda",30),
(5,"mary",41); -- insert data into teacher table
insert into students values
(1,"hary",23),
(2,"jack",42),
(3,"joe",32),
(4,"dent",23),
(5,"brush",40); -- insert data into students table
select * from teacher; -- select all rows from teacher table
select * from students; -- select all rows from students table
select name from teacher UNION select name from students; -- select distinct names from both teacher and students tables
select age from teacher UNION select age from students WHERE age>=30; -- select distinct ages from teacher and students where student age is >= 30
select age from teacher WHERE age>=30 UNION select age from students WHERE age>=30; -- select distinct ages >= 30 from both tables
select name from teacher UNION ALL select name from students; -- select all names from both tables including duplicates
select age from teacher UNION ALL select age from students WHERE age>=30; -- select all ages from teacher and students where student age >= 30 including duplicates
select name,age from teacher ORDER BY age DESC LIMIT 1; -- select name and age of the oldest teacher
select * from teacher where age=(select min(age) from teacher); -- select teacher details with the minimum age
SELECT * from teacher where age= ANY(select age from students); -- select teachers whose age matches any student's age
select * from students where age <=any(select age from teacher); -- select students whose age is less than or equal to any teacher's age
SELECT * from teacher where age= all(select age from students); -- select teachers whose age is equal to all students' ages
SELECT * from teacher where age< all(select age from students); -- select teachers whose age is strictly less than all students' ages
select * from students where age> all(select age from teacher); -- select students whose age is strictly greater than all teachers' ages
SELECT * from teacher where age<= all(select age from students); -- select teachers whose age is less than or equal to all students' ages
update students set age=46 where id=2 and id=4;