CREATE DATABASE practice;
use practice;

-- CREATING 1ST TABLE 
CREATE TABLE Employee (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50),
    Dept VARCHAR(20),
    Salary DECIMAL(10,2)
);

-- INSERTION OF VALUES
INSERT INTO Employee (EmpID, Name, Dept, Salary)
VALUES
(1, 'Amit',  'HR', 45000),
(2, 'Karan', 'HR', 55000),
(3, 'Neha',  'IT', 70000),
(4, 'Priya', 'IT', 80000),
(5, 'Sakshi', 'CS', 65000),
(6, 'Laxman', 'Mech', 80000),
(7, 'Suyog', 'CS', 20000);

select * from Employee;

-- Normal Aggregate Function
SELECT Dept,
       AVG(Salary)
FROM Employee
GROUP BY Dept;

-- Notice:
-- Multiple rows became one row per department.
-- Detail rows are lost.

-- Now lets Apply Window Function

SELECT Name,
       Dept,
       Salary,
       AVG(Salary) OVER(PARTITION BY Dept) AS DeptAvg
FROM Employee;

-- Notice:

-- Original rows remain.
-- Additional calculation added.
-- This is the biggest advantage.

-- Need Window Functions??
-- Suppose Interviewer Asks: Show each employee along with department average salary.
-- So that Query becomes long, Thats why we use Window Functions to avoid Complexity in Code
-- WINDOW FUNCTIONS

SELECT *,
       AVG(Salary) OVER(PARTITION BY Dept)
FROM Employee;

-- OVER()
-- The keyword that converts a normal function into a window function.


-- Applications of Window Functions
-- 1)Rankings
-- 2)Running Totals
-- 3)Comparing Rows
-- 4)Finding Trends


-- Types of Window Functions


-- 1)Aggregate Window Functions
-- These are normal aggregates used with OVER().
-- SUM()

CREATE TABLE Employees_1 (
    Name VARCHAR(50),
    Salary INT
);

INSERT INTO Employees_1 (Name, Salary)
VALUES
('Amit', 40000),
('Neha', 50000),
('Rahul', 60000);

select * from Employees_1;

SELECT Name,
       Salary,
       SUM(Salary) OVER() AS TotalSalary
FROM Employees_1;


-- AVG()
SELECT Name,
       Salary,
       AVG(Salary) OVER() AvgSalary
FROM Employees_1;


-- COUNT()
SELECT Name,
       COUNT(*) OVER() TotalEmployees
FROM Employees_1;


-- MAX()
SELECT Name,
       MAX(Salary) OVER() HighestSalary
FROM Employees_1;


-- PARTITION BY
-- Most asked interview topic.
-- Acts like GROUP BY but doesn't collapse rows.

CREATE TABLE Employees_2 (
    Name VARCHAR(50),
    Dept VARCHAR(20),
    Salary INT
);

INSERT INTO Employees_2 (Name, Dept, Salary)
VALUES
('Amit', 'HR', 40000),
('Karan', 'HR', 60000),
('Neha', 'IT', 70000),
('Priya', 'IT', 90000);

SELECT *,
       AVG(Salary)
       OVER(PARTITION BY Dept)
FROM Employees_2;

-- PARTITION BY divides rows into groups while retaining all original rows.





-- 2)Ranking Functions
-- You can use the following table to practice all ranking functions: 
-- ROW_NUMBER(), RANK(), DENSE_RANK(), and NTILE().

CREATE TABLE Employees_3 (
    EmpID INT,
    Name VARCHAR(50),
    Dept VARCHAR(20),
    Salary INT
);

INSERT INTO Employees_3 (EmpID, Name, Dept, Salary)
VALUES
(101, 'Amit',  'HR',  50000),
(102, 'Karan', 'HR',  70000),
(103, 'Neha',  'IT',  80000),
(104, 'Priya', 'IT',  80000),
(105, 'Rahul', 'IT',  60000),
(106, 'Sneha', 'HR',  70000),
(107, 'Rohan', 'Sales', 45000),
(108, 'Pooja', 'Sales', 65000); 


-- A}ROW_NUMBER()
-- Assigns a unique sequential number to each row.

SELECT `EmpID`,Name,
       Salary,
       ROW_NUMBER() OVER(ORDER BY Salary DESC) AS RowNum
FROM Employees_3;

-- Note: Even if salaries are equal, row numbers remain unique.
-- Note: in row number we given unique rank to each row, whatif two records have same salary because sql have no rule to disction which should come first database can asign base on interprocess and order can maybe change duing processthe database.

SELECT `EmpID`,Name,
       Salary,
       ROW_NUMBER() OVER(ORDER BY Salary DESC, EmpID DESC) AS RowNum
FROM Employees_3;

-- B}RANK()
-- Same rank for ties, but skips rank numbers.

SELECT `EmpID`,Name,
       Salary,
       RANK() OVER(ORDER BY Salary DESC) AS RankNo
FROM Employees_3;

-- Note: Rank 2 and Rank 4 are skipped.

SELECT `EmpID`,Name,
       Salary,
       RANK() OVER(ORDER BY Salary DESC) AS RankNo
FROM Employees_3 limit 3;

-- C}DENSE_RANK()
-- Same rank for ties, but does not skip rank numbers.

SELECT Name,
       Salary,
       DENSE_RANK() OVER(ORDER BY Salary DESC) AS DenseRankNo
FROM Employees_3;

SELECT Name,
       Salary,
       DENSE_RANK() OVER(ORDER BY Salary DESC) AS DenseRankNo
FROM Employees_3 limit 3;


-- Note: No ranks are skipped.


-- D}NTILE(4)
-- Divides rows into 4 equal groups (buckets).

SELECT Name,
       Salary,
       NTILE(4) OVER(ORDER BY Salary DESC) AS Quartile
FROM Employees_3;


-- | Function     | Ties Allowed? | Skips Numbers?             |
-- | ------------ | ------------- | -------------------------- |
-- | ROW_NUMBER() | ❌ No          | ❌ No                       |
-- | RANK()       | ✅ Yes         | ✅ Yes                      |
-- | DENSE_RANK() | ✅ Yes         | ❌ No                       |
-- | NTILE(n)     | N/A           | Divides rows into n groups |


use practice;

-- 3)Analytic Window Functions

-- A}LEAD()
-- Look forward.

CREATE TABLE SalesData (
    Id int,
    Month VARCHAR(10),
    Sales INT
);

INSERT INTO SalesData (Id, Month, Sales)
VALUES
(1, 'Jan', 100),
(2, 'Feb', 120),
(3, 'Mar', 140);


SELECT ID, Month,
       Sales,
       LEAD(Sales)
       OVER(ORDER BY Month) AS NextMonthSales
FROM SalesData;

-- Use Case:	Compare current month with next month.


-- B}LAG()
-- Look backward.

SELECT Month,
       Sales,
       LAG(Sales)
       OVER(ORDER BY Id ASC) AS PreviousMonthSales
FROM SalesData;

-- Use Case: Growth Analysis.

-- Sales Difference from Previous Month

SELECT Month,
       Sales,
       Sales - LAG(Sales) OVER(ORDER BY ID ASC) AS Growth
FROM SalesData;


-- C}Running Total: Very important.

CREATE TABLE SalesData_2 (
    Id int,
    Month VARCHAR(10),
    Sales INT
);

INSERT INTO SalesData_2 (Id, Month, Sales)
VALUES
(1, 'Jan', 100),
(2, 'Feb', 200),
(3, 'Mar', 300);

drop table if exists SalesData_2;
SELECT Id, Month,
       Sales,
       SUM(Sales) OVER (
           ORDER BY
           ID ASC
       ) AS RunningTotal
FROM SalesData_2;

-- Most Important Interview Questions

-- Q1: Difference between GROUP BY and PARTITION BY?
-- | GROUP BY               | PARTITION BY            |
-- | ---------------------- | ----------------------- |
-- | Collapses rows         | Keeps rows              |
-- | Returns grouped result | Returns detailed result |


-- Q2: Which ranking function should be used for Top N?
-- ROW_NUMBER()

-- Q3: Which function compares current row with previous row?
-- LAG()

-- Q4: Which function compares current row with next row?
-- LEAD()

-- Q5: what is frist value and last value window function?
-- FRIST_VALUE() and LAST_VALUE() are window functions that allow you to retrieve the first and last values from a set of rows within a specified window frame. They are useful for analyzing trends and patterns in data over time or within specific partitions.

