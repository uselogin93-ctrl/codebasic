-- defineces: the procedures is the block of code use to perform a specific task.
-- stortProcedure: it collects of multiple sql statements and store in the database. it can be called multiple times.

use first;
CREATE TABLE IF NOT EXISTS employees (
  id INT PRIMARY KEY,
  dept VARCHAR(100),
  name VARCHAR(100),
  salary INT
);
INSERT INTO employees (id, dept, name, salary) VALUES
(1, 'IT', 'Sagar', 80000),
(2, 'HR', 'Ram', 60000),
(3, 'Sales', 'Pooja', 65000);

delimiter $$
create procedure get_employee()
BEGIN
    SELECT * FROM employees;
END $$
delimiter ;

call get_employee();

Delimiter $$ 
create procedure getdb(in dept varchar(100), in name varchar(100))
Begin 
	select* from Employee where dept = dept and name = name;
End $$
delimiter ;

call getdb("hr","Ram");

Delimiter $$
create procedure prodb_2(in p_id int, in P_name varchar(100), in P_salary int)
Begin
	select * from Employees where p_id = id and P_name = name and P_salary = salary;
End $$
Delimiter ;

call prodb_2(2,"Raj",60000);

-- trigess is a spices type of store pogram that automation exceute fires when a specfices events acouten in tables. trigess suport event like update ,inset,delete.
-- real live expale bank.
create table emp_audit(
	Audit_id int Auto_increment primary Key,
    Actionture varchar(50),
    Actiondate datetime
);

use first;
create table collage(
id int auto_increment primary key,
Name varchar(20),
dept varchar(20)
);
insert into collage value
(1,"Mohit","CS"),
(2,"Priya","it");
select * from collage;
insert into collage(name,dept) values("Laxman","cs");
desc collage;
drop table collage;
select * from csTable;
insert into collage(name,dept) values("Ram","cs");

create table csTable(
id int auto_increment primary key,
Name varchar(20),
dept varchar(20),
Actionture varchar(50),
Actiondate datetime
);

create table itTable(
id int auto_increment primary key,
Name varchar(20),
dept varchar(20),
Actionture varchar(50),
Actiondate datetime
);
