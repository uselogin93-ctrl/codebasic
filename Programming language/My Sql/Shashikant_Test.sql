CREATE Table emp(
    emp_id int(10),
    emp_name varchar(20),
    department varchar(20),
    salary int(10),
    join_date date
);

INSERT INTO emp VALUES
(101, 'Amit', 'HR', 45000, '2022-01-15'),
(102, 'Neha', 'IT', 70000, '2021-05-10'),
(103, 'Rahul', 'Finance ', 65000, '2020-08-20'),
(104, 'Priya', 'It', 80000, '2019-11-05'),
(105, 'Karan', 'HR', 50000, '2023-03-12');
CREATE Table Orders (
    OrderID int(10),
    CustomerName  varchar(20),
    Product varchar(20),
    Amount int(10),
    OrderDate date
);

INSERT INTO Orders VALUES
(1, 'Raj','Laptop', 55000, '2024-01-10'),
(2, 'Neha', 'Mouse', 800, '2024-01-15'),
(3, 'Raj', 'Keyboard', 1500, '2024-02-01'),
(4, 'Aisha','Laptop', 60000, '2024-02-10'),
(5, 'Karan', 'Monitor', 12000, '2024-03-05');

-- Q.1 Show unique department names from the Employee table.
Select distinct department from emp; 

-- Q.2 Display the details of employees who belong to the IT department and have a salary greater than ₹60,000. 
Select * from emp where department = 'IT' and salary > 60000;

-- Q.3 Display only Employee Name and Salary from the Employee table. 
Select emp_name, salary from emp;

-- Q.5 Find employees whose names start with the letter 'P'. 
Select emp_name from emp where emp_name like 'P%';

-- Q.6 Display all employees sorted by salary in descending order. 
Select * from emp order by salary desc;

-- Q.7 Find the 3rd Maximum salary from the Employee table. 
Select Max(salary) from emp order by salary desc limit 1 offset 2;

-- Q.10 Find all orders where the amount is greater than the average order amount. 
Select orderID from Orders where Amount = (Select AVG(Amount) from Orders);


-- Q.12 Write a query to display all records from the Order table. 
Select * from Orders;

-- Q.13 Display the unique department names that have at least one employee earning more than ₹50,000. 
Select Department from emp where Salary >= 50000;

-- Q.17 Difference Between Primary Key and Foreign Key 
-- ANS:- The Primary key is a most unqiue column in a table with all unqiue value that can not be repeated and can not be null.
--       The Foreign key is a column in a table that refers to the primary key of another table.
