CREATE DATABASE Emp_Mgt;
USE Emp_Mgt;

create table Emp(
    id int primary key,
    Name varchar(50),
    Email varchar(50),
    Contact Bigint,
    Gender varchar(10)
);
insert into Emp values
    (1,"Sagar","r@gmail.com",9991112233,"Male"),
    (2,"Ram","ram@gmail.com",8888999900,"Male"),
    (3,"Ramesh","m@gmail.com",8889998899,"Male"),
    (4,"Suresh","s@gmail.com",8811112222,"Male"),
    (5,"Mahesh","sd@gmail.com",9999070099,"Male"),
    (6,"Rajesh","rj@gmail.com",7776623333,"Male"),
    (7,"Pooja","p@gmail.com",8888899999,"Female"),
    (8,"Bala","b@gmail.com",9111122222,"Male"),
    (9,"MALA","ma@gmail.com",9888877777,"Male"),
    (10,"Lala","la@gmail.com",9999992222,"Male"),
    (11,"Kala","ka@gmail.com",9110000222,"Male"),
    (12,"Esha","es@gmail.com",9000022222,"Female"),
    (13,"Nisha","ni@gmail.com",9555552222,"Female"),
    (14,"Reema","ee@gmail.com",98888881111,"Female"),
    (15,"Seema","see@gmail.com",90000111116,"Female");

create table Address(
    id int primary key,
    City varchar(50),
    Area varchar(50),
    State varchar(50),
    Landmark varchar(50),
    Country	varchar(50),
    AddressType	varchar(50),			
    emp_id int,
    foreign key(emp_id) references Emp(id)
);
INSERT INTO Address VALUES
    (1,"Jalgaon","Katiya Fail","Maharshtra","Railway Station","India","Permanant",1),
    (2,"Thane","Shivaji Nagar","Maharshtra","near Shivaji Marg","India","Cruspondance",1),
    (3,"Thane","Sambaji Nagar","Maharshtra","near data gate","India","Cruspondance",2),
    (4,"Malkapur","Parpeth","Maharshtra","Near Eid Gha","India","Permanant",3),
    (5,"Malkapur","Parpeth","Maharshtra","Near Station","India","Permanant",4),
    (6,"Ghatkoper","gaikwad Wadi","Maharshtra","Near Pk School","India","Permanant",5),
    (7,"Jalgaon","Sagar Nagar","Maharshtra","Behind Ram Mandir","India","Cruspondance",3),
    (8,"Thane","Saroj nagar","Maharshtra","Bala Complex","India","Cruspondance",5),
    (9,"Mumbra","jivan Baugh","Maharshtra","Bano complex","India","Cruspondance",4),
    (10,"Aurangabad","Osmanpura","Maharshtra","near Mazdoor wadi","India","Permanant",2),
    (11,"Thane","Navpada","Maharshtra","Near Pharma College","India","Cruspondance",6),
    (12,"Dadar","Pooja Colony","Maharshtra","Near Pharma College","India","Cruspondance",7),
    (13,"Malegaon","Usha Nagar","Maharshtra","Behind Er College","India","Permanant",6),
    (14,"Malegaon","Usha Nagar","Maharshtra","Behind Er College","India","Permanant",7),
    (15,"Dadar","Pooja Colony","Maharshtra","uma complex","India","Cruspondance",8),
    (16,"Dadar","Pooja Colony","Maharshtra","uma complex","India","Cruspondance",9),
    (17,"Thane","Navpada","Maharshtra","Godbandar road","India","Permanant",10),
    (18,"Kalyan","Dadu Wadi","Maharshtra","Kokan gao","India","Permanant",9),
    (19,"Kalyan","Dadu Wadi","Maharshtra","Kokan gao","India","Cruspondance",11),
    (20,"Kalyan","Dadu Wadi","Maharshtra","Kokan gao","India","Cruspondance",12),
    (21,"Mumbra","Kalpesh nagar","Maharshtra","uma complex","India","Cruspondance",15),
    (22,"mulund","bala nagar","Maharshtra","Bala gate","India","Cruspondance",14);

create table Department(
    ID int primary key,
    Name varchar(50),
    Description varchar(100)
);
INSERT INTO Department VALUES
    (1,"IT","software Developemt"),
    (2,"Marketing","Branding"),
    (3,"Product","Best POroduct"),
    (4,"Sales","get Client for Project");

create table EmployeeCompany(
    id int primary key,
    designation varchar(50),
    doj varchar(50),
    salary int,
    department_id int,
    emp_id int,
    foreign key(department_id) references Department(ID),
    foreign key(emp_id) references Emp(id)
);
INSERT INTO EmployeeCompany VALUES
    (1,"Director","current date",100000,1,1),
    (2,"Sales Manager","current date",90000,4,2),
    (3,"Sales Associate","current date",34000,4,5),
    (4,"Sales Associate","current date",45000,4,6),
    (5,"Product Manager","current date",75000,3,3),
    (6,"Marketing Manager","current date",80000,2,4),
    (7,"Product Associate","current date",20000,3,7),
    (8,"Product Associate","current date",15000,3,8),
    (9,"Product Associate","current date",25000,3,9),
    (10,"DM Associate","current date",30000,2,15),
    (11,"DM Associate","current date",35000,2,14),
    (12,"DM Associate","current date",10000,2,13),
    (13,"DM Associate","current date",14000,2,12),
    (14,"JR Developer","current date",47000,1,10),
    (15,"JR Developer","current date",60000,1,11);

create table EmpQualifcation(
    id int primary key,
    ssc tinyint,
    hsc tinyint,
    graduation tinyint,
    emp_id int,
    foreign key(emp_id) references Emp(id)
);
insert into EmpQualifcation values
    (1,56,78,90,1),
    (2,78,78,90,2),
    (3,40,56,89,3),
    (4,99,88,67,4),
    (5,45,89,39,5),
    (6,67,89,77,6),
    (7,89,55,88,7),
    (8,89,66,66,8),
    (9,88,77,55,9),
    (10,65,88,78,10),
    (11,44,54,76,11),
    (12,55,57,65,12),
    (13,66,58,53,13),
    (14,33,67,98,14),
    (15,35,65,90,15);

create table EmployeeSalary(
    id int primary key,
    Salary int,
    BankName varchar(100),
    accountNumber varchar(50),
    IfscCode varchar(50),
    Sal_month varchar(20),
    emp_id int,
    foreign key(emp_id) references Emp(id)
);
insert into EmployeeSalary values
    (1,100000,"HDFC","HDFC00101","HDFC00001","Feb",1),
    (2,90000,"HDFC","HDFC00102","HDFC00001","Feb",2),
    (3,75000,"HDFC","HDFC00103","HDFC00001","Feb",3),
    (4,100000,"HDFC","HDFC00101","HDFC00001","March",1),
    (5,90000,"HDFC","HDFC00102","HDFC00001","March",2),
    (6,75000,"HDFC","HDFC00103","HDFC00001","March",3),
    (7,80000,"HDFC","HDFC00104","HDFC00001","March",4),
    (8,34000,"HDFC","HDFC00105","HDFC00001","March",5),
    (9,45000,"HDFC","HDFC00106","HDFC00001","March",6),
    (10,20000,"HDFC","HDFC00107","HDFC00001","March",7),
    (11,100000,"HDFC","HDFC00101","HDFC00001","April",1),
    (12,90000,"HDFC","HDFC00102","HDFC00001","April",2),
    (13,75000,"HDFC","HDFC00103","HDFC00001","April",3),
    (14,80000,"HDFC","HDFC00104","HDFC00001","April",4),
    (15,34000,"HDFC","HDFC00105","HDFC00001","April",5),
    (16,45000,"HDFC","HDFC00106","HDFC00001","April",6),
    (17,20000,"HDFC","HDFC00107","HDFC00001","April",7),
    (18,15000,"HDFC","HDFC00108","HDFC00001","April",8),
    (19,25000,"HDFC","HDFC00109","HDFC00001","April",9),
    (20,47000,"HDFC","HDFC00110","HDFC00001","April",10),
    (21,60000,"HDFC","HDFC00111","HDFC00001","April",11),
    (22,100000,"HDFC","HDFC00101","HDFC00001","May",1),
    (23,90000,"HDFC","HDFC00102","HDFC00001","May",2);

create table Client(
    id int primary key,
    name varchar(100),
    contact varchar(20),
    email varchar(100)
);
insert into Client values
    (1,"Ratan TATA","9999977777","rt@gmail.com"),
    (2,"Ambani","8888886666","am@gmail.com"),
    (3,"Aman Gupta","7777711111","m@gmail.com"),
    (4,"Kabeer","9988998899","kn@gmail.com");

create table Project(
    id int primary key,
    name varchar(100),
    duration int,
    description varchar(200),
    client_id int,
    foreign key(client_id) references Client(id)
);
insert into Project values
    (1,"Hotel Management",2,"hotel details",1),
    (2,"Tata Namak",6,"Product Managemnet",1),
    (3,"Sales Management",6,"Online and Offline Sales",3),
    (4,"Electronics Production Management with Enventory",1,"Enventory Product",3),
    (5,"Jio market",2,"Demo",2),
    (6,"Relaince Market",6,"Project Demo",3),
    (7,"telle calling",5,"Online Branding",2);


-- Q.1 please select empName,email,city state and country of all the employee.
select e.name, e.email, a.city, a.state, a.country from Emp e left join Address a on e.id = a.emp_id;

-- Q.2 please select empName,email,contact,city, area, state and country of all the female employee.
select e.name, e.email, e.contact, a.city, a.area, a.state, a.country from Emp e left join Address a on e.id = a.emp_id where e.gender = "Female";

-- Q.3 please select empName,email,ssc,hsc,contact,city, area, state and country of all the male employee.
select e.name, e.email, eq.ssc, eq.hsc, e.contact, a.city, a.area, a.state, a.country from Emp e left join Address a on e.id = a.emp_id left join EmpQualifcation eq on e.id = eq.emp_id where e.gender = "Male";

-- Q.4 please fetch all the employee Name,contact,qualification deatils those are have permanent address.
select e.name, e.contact, eq.ssc, eq.hsc, eq.graduation from Emp e left join Address a on e.id = a.emp_id left join EmpQualifcation eq on e.id = eq.emp_id where a.AddressType = "Permanant";

-- Q.5 please fetch all the employee Name,email,gender,area,city,doj, salary and designation.
select e.name, e.email, e.gender, a.area, a.city, ec.doj, ec.salary, ec.designation from Emp e left join Address a on e.id = a.emp_id left join EmployeeCompany ec on e.id = ec.emp_id; 

-- Q.6 please select all the Manager details like there Name,email,designation,qualification,city and Department Name.
select e.name, e.email, ec.designation, eq.ssc, eq.hsc, eq.graduation, a.city, d.name as DepartmentName from Emp e left join EmployeeCompany ec on e.id = ec.emp_id left join EmpQualifcation eq on e.id = eq.emp_id left join Address a on e.id = a.emp_id left join Department d on ec.department_id = d.id where ec.designation like "%Manager%";

-- Q.7 please select all the project and client details from table.
select p.name as ProjectName, p.duration, p.description, c.name as ClientName, c.contact, c.email from Project p left join Client c on p.client_id = c.id;

-- Q.8 please select all employee  Details like, Name,Email,City,Project Name,DepartmentName and designation.
    -- select e.name, e.email, a.city, p.name as ProjectName, d.name as DepartmentName, ec.designation from Emp e left join Address a on e.id = a.emp_id left join EmployeeCompany ec on e.id = ec.emp_id left join Department d on ec.department_id = d.id left join Project p on p.client_id = d.id;

-- Q.9 please fetch all the client details with there project and employee personal details
    -- select c.name as ClientName, c.contact, c.email, p.name as projectName, p.duration, p.description, e.name as EmployeeName, e.email, e.contact from Client c left join Project p on c.id = p.client_id left join EmployeeCompany ec on ec.department_id = p.client_id left join Emp e on e.id = ec.emp_id;

-- Q10 please fetch all the employee,qualif,address and designation details whose salary is not decide.
select e.name, e.email, eq.ssc, eq.hsc, eq.graduation, a.city, a.area, a.state, a.country, ec.designation from Emp e left join EmpQualifcation eq on e.id = eq.emp_id left join Address a on e.id = a.emp_id left join `EmployeeCompany` ec on e.id = ec.emp_id where ec.salary is null;

-- Q.11 please select all the employee,qualification and salary those are working for tata namak project.
    -- select e.name, e.email, eq.ssc, eq.hsc, eq.graduation, es.salary, p.name as ProjectName from `Emp` e left join `EmpQualifcation` eq on e.id = eq.emp_id left join `EmployeeSalary` es on e.id = es.emp_id left join `EmployeeCompany` ec on e.id = ec.emp_id left join `Project` p on p.client_id = ec.department_id where p.name = "Tata Namak";

-- Q.12 please select the employee,address,qualification,company deatils those are working not getting the salary;
select e.name, e.email, a.city, a.area, a.state, a.country, eq.ssc, eq.hsc, eq.graduation, ec.designation, es.salary from Emp e left join Address a on e.id = a.emp_id left join EmpQualifcation eq on e.id = eq.emp_id left join EmployeeCompany ec on e.id = ec.emp_id left join EmployeeSalary es on e.id = es.emp_id where es.salary is null;

-- Q.13 please select all the employee,address,qualification,emp comppny,empsalary,department ,project details those are working for aman Gupta project.
    -- select e.id, e.name, e.email, a.city, a.area, a.state, a.country, eq.ssc, eq.hsc, eq.graduation, ec.designation, es.salary, d.name as DepartmentName, p.name as ProjectName , c.name as ClientName from Emp e left join Address a on e.id = a.emp_id left join EmpQualifcation eq on e.id = eq.emp_id left join EmployeeCompany ec on e.id = ec.emp_id left join EmployeeSalary es on e.id = es.emp_id left join Department d on ec.department_id = d.id left join Project p on p.client_id = d.id left join Client c on p.client_id = c.id where c.name = "Aman Gupta";
