DROP DATABASE IF EXISTS collage; -- Ensure a clean start for every run
create database collage; -- create database named collage
use collage; -- switch to collage database
create table teacher(
id int primary key,
 name char(20),
 age tinyint,
 gender enum('male','female','other')
); -- create teacher table
create table students(
id int primary key,
 name char(20),
 gender enum('male','female','other'),
 age tinyint
); -- create students table
insert into teacher values
(1,"peter",32,"male"),
(2,"megan",43,"female"),
(3,"rose",29,"female"),
(4,"linda",30,"female"),
(5,"mary",41,"female"); -- insert data into teacher table
insert into students values
(1,"hary","male",23),
(2,"jack","male",42),
(3,"joe","male",32),
(4,"dent","male",23),
(5,"brush","female",40); -- insert data into students table
select * from teacher; -- select all rows from teacher table
select * from students; -- select all rows from students table
select name from teacher UNION select name from students; -- select distinct names from both teacher and students tables
select age from teacher UNION select age from students WHERE age>=30; -- select distinct ages from teacher and students where student age is >= 30
select age from teacher WHERE age>=30 UNION select age from students WHERE age>=30; -- select distinct ages >= 30 from both tables
select name from teacher UNION ALL select name from students; -- select all names from both tables including duplicates
select age from teacher UNION ALL select age from students WHERE age>=30; -- select all ages from teacher and students where student age >= 30 including duplicates
select name,age from teacher ORDER BY age DESC LIMIT 1; -- select name and age of the oldest teacher
select * from teacher where age=(select min(age) from teacher); -- select teacher details with the minimum age
SELECT * from teacher where age = ANY(select age from students); -- select teachers whose age matches any student's age
select * from students where age <= ANY(select age from teacher); -- select students whose age is less than or equal to any teacher's age
SELECT * from teacher where age = ALL(select age from students); -- Note: Usually returns empty if student ages differ
SELECT * from teacher where age< all(select age from students); -- select teachers whose age is strictly less than all students' ages
select * from students where age> all(select age from teacher); -- select students whose age is strictly greater than all teachers' ages
SELECT * from teacher where age<= all(select age from students); -- select teachers whose age is less than or equal to all students' ages
update students set age=46 where id=2 or id=4; -- Fixed: Use 'OR' to update multiple specific IDs
SELECT * FROM students, teacher; -- this will return the Cartesian product of students and teacher tables
SELECT students.name, teacher.name FROM students, teacher; -- this will return the Cartesian product of students and teacher names
SELECT students.name, teacher.name FROM students CROSS JOIN teacher; -- Explicit CROSS JOIN to avoid editor warnings
SELECT students.name, teacher.name FROM students CROSS JOIN teacher AS t2; -- Explicit CROSS JOIN syntax
 drop table teacher; -- Commented out so you can see the data after the script runs
drop table students; -- Commented out so you can see the data after the script runs
