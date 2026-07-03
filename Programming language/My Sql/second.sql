create database my_database;
use my_database;
create table web_table(
_id int primary key,
User_Name varchar(50),
Passwass varchar(50),
link varchar(100)
);

insert into web_table value
(123654,"ram@10","ram@1345","https://ram.com"),
(754869,"sham@10","sham@1345","https://sham.com"),
(631524,"romu@10","romu@1345","https://romu.com"),
(856497,"popu@10","popu@1345","https://popu.com"),
(415975,"lupu@10","lupu@1345","https://lupu.com");

select * from web_table;
drop tables web_table;
create table web_table(
_id int primary key,
User_Name varchar(50),
Passwass varchar(50),
link varchar(100),
add_date date,
pay_amount int,
city varchar(20)
);

insert into web_table value
(123654,"ram@10","ram@1345","https://ram.com","2012-06-12",500,"mumbai"),
(754869,"sham@10","sham@1345","https://sham.com","2012-01-22",1500,"pune"),
(631524,"romu@10","romu@1345","https://romu.com",curdate(),1800,"pure"),
(856497,"popu@10","popu@1345","https://popu.com","2014-12-29",900,"goa"),
(415975,"lupu@10","lupu@1345","https://lupu.com","2014-10-20",1000,"pure"),
(564867,"ram@10","ram@1345","https://ram.com",current_date(),500,"mumbai"),
(147852,"sham@10","sham@1345","https://sham.com","2012-01-22",1500,"pune"),
(478532,"romu@10","romu@1345","https://romu.com","2013-08-02",1800,"pure"),
(782154,"popu@10","popu@1345","https://popu.com",current_date(),900,"goa"),
(248571,"lupu@10","lupu@1345","https://lupu.com","2014-10-20",-1000,"pure");

insert into web_table value
(247894,"lupu@10","lupu@1345","https://lupu.com","2014-10-20",-7000,"pure");

select * from web_table where Passwass="romu@1345";

select * from web_table where city="Pure" and link="https://lupu.com";

select * from web_table where not city="Pure";

select * from web_table where (city="mumbai" or city="pure")and pay_amount<1000;

show triggers;

truncate web_table;

select * from web_table where add_date = curdate();

SELECT add_date FROM web_table WHERE DATE_FORMAT(add_date, '%m-%d') = DATE_FORMAT(CURDATE(), '%m-%d');

DELETE FROM web_table WHERE _id = 564867;

-- Use UPDATE to change the data value using the standard 'YYYY-MM-DD' format
UPDATE web_table SET add_date = '2012-06-15' WHERE _id = 123654;

-- Use DATE_FORMAT in the SELECT statement to change how it looks for the user
SELECT _id, User_Name, DATE_FORMAT(add_date, '%y/%m/%d') AS formatted_date 
FROM web_table 
ORDER BY add_date ASC;