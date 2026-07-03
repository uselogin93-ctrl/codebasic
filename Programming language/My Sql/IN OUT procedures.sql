-- CTE is temper result that exciteges only for the query quet follow it.
-- 19-06-2026
use first;
with salary as 
(select * from employees where salary>50000)
select * from salary;

with dept_salary as 
(select dept,sum(salary) from employees group by dept)
select * from dept_salary;

delimiter $$
create procedure get_employee()
BEGIN
    SELECT * FROM employees;
END $$
delimiter ;

call get_employee();

-- that are three type of procedures 
-- in, out, inout

-- Q: writte a procedures to fetch of max salary
delimiter $$
create procedure procedures(out MaxSal int)
BEGIN
    SELECT max(salary) into MaxSal FROM employees;
END $$
delimiter ;

call procedures(@MaxSal); -- the @MaxSal is a User defined Variable
select @MaxSal;

delimiter $$
create procedure Min_procedures(out MinSal int)
BEGIN
    SELECT min(salary) into MinSal FROM employees;
END $$
delimiter ;

call Min_procedures(@MinSal); -- the @MinSal is a User defined Variable
select @MinSal;

-- Q: write a procedures to fecth min slary according to given dept.
delimiter $$
create procedure IN_OUT_Comba(IN depart varchar(50), out MinSal int)
BEGIN
    SELECT min(salary) into MinSal FROM employees where dept=depart;
END $$
delimiter ;

call IN_OUT_Comba('hr',@MinSal); -- the @MinSal is a User defined Variable
select @MinSal;