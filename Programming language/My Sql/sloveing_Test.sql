use railway;
select * from emp;
select * from Orders;  

-- Q.1 Show unique department names from the Employee table.
Select distinct department from emp; 

-- Q.2 Display the details of employees who belong to the IT department and have a salary greater than ₹60,000. 
Select * from emp where department = 'IT' and salary > 60000;

-- Q.3 Display only Employee Name and Salary from the Employee table. 
Select emp_name, salary from emp;

-- Q.4 Define SQL & Provide its 3 Applications 
-- ANS:- SQL stands for Structured Query Language. It is a programming language used to manage and manipulate relational databases. SQL allows users to create, read, update, and delete data in a database.
-- Applications of SQL: MySQL, PostgreSQL, Microsoft SQL Server.

-- Q.5 Find employees whose names start with the letter 'P'. 
Select emp_name from emp where emp_name like 'P%';

-- Q.6 Display all employees sorted by salary in descending order. 
Select * from emp order by salary desc;

-- Q.7 Find the 3rd Maximum salary from the Employee table. 
Select Max(salary) from emp order by salary desc limit 1 offset 2;

-- Q.8 Display employees who joined after 1st January 2021.
Select * from emp where join_date > '2021-01-01';

-- Q.9 Explain SubQuery and Give its Example by refering it to any Table 
-- ANS:- A subquery is a query nested inside another query. It is used to perform operations that require multiple steps, such as filtering data based on the results of another query. Subqueries can be used in SELECT, INSERT, UPDATE, and DELETE statements.
-- Example: Find all employees who earn more than the average salary.

-- Q.10 Find all orders where the amount is greater than the average order amount. 
Select orderID from Orders where Amount = (Select AVG(Amount) from Orders);

-- Q.11 Write a query to identify duplicate customer names in the Orders table.
Select `CustomerName` from Orders group by CustomerName having count(CustomerName) > 1;

-- Q.12 Write a query to display all records from the Order table. 
Select * from Orders;

-- Q.13 Display the unique department names that have at least one employee earning more than ₹50,000. 
Select distinct Department, Salary from emp where Salary >= 50000;