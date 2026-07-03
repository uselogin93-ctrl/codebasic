-- Active: 1780064651475@@zephyr.proxy.rlwy.net@52238@railway
create database library;
use library;
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    phone VARCHAR(15),
    country VARCHAR(50)
);
INSERT INTO customers VALUES
(1, 'Amit', 'Sharma', '9876543210', 'India'),
(2, 'Rahul', 'Patel', '9876543211', 'India'),
(3, 'John', 'Smith', '9876543212', 'USA'),
(4, 'Anjali', 'Sharma', '9876543213', 'India'),
(5, 'David', 'Brown', '9876543214', 'Canada');
drop table customers;
select*from customers;
select*from customers where country = 'India';
select *from customers order by first_name asc;
select count(customer_id) from customers;
select max(customer_id)from customers;
select *from customers  where first_name = "Amit";
select *from customers where country like "Ind%";
select distinct first_name from customers;
select first_name, last_name from customers order by first_name asc;
select first_name, last_name from customers order by first_name asc LIMIT 3;
CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT,
    city VARCHAR(50)
);
INSERT INTO students
(id, name, marks, city)
VALUES
(1, 'Shashikant', 92, 'Mumbai'),
(2, 'Rohan', 85, 'Pune'),
(3, 'Priya', 78, 'Mumbai'),
(4, 'Aman', 95, 'Delhi'),
(5, 'Neha', 88, 'Mumbai');
select * from students where marks > 80 and city='Mumbai';
select * from students where city = 'Mumbai';
select * from students order by marks desc limit 2;
CREATE table emp(
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id VARCHAR(50)
);
INSERT INTO emp(emp_id, emp_name, dept_id) VALUES
(1, 'John', 10),
(2, 'Alice', 20),
(3, 'Bob', Null);
create table dept(
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);
INSERT INTO dept(dept_id, dept_name) VALUES
(10, 'HR'),
(20, 'IT'),
(30, 'Finance');
select emp.emp_name as Name, dept.dept_name as Dept from emp left join dept on emp.dept_id = dept.dept_id;
select emp.emp_name as Name, dept.dept_name as Dept from emp right join dept on emp.dept_id = dept.dept_id;
select emp.emp_name as Name, dept.dept_name as Dept from emp inner join dept on emp.dept_id = dept.dept_id;
select * from emp where dept_id is null;
