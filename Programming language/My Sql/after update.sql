use first;
create table Order_table(
o_id int primary Key,
c_name varchar(50),
O_name varchar(50),
O_status varchar(50)
);

insert into Order_table values
(1,"raj","pen","sent"),
(2,"mohit","markaer","sent"),
(3,"prakash","duster","sent");

create table return_table(
r_id int auto_increment primary Key,
c_name varchar(50),
O_name varchar(50),
Actiontype varchar(50),
Actiondate datetime
);

update Order_table
set o_status="returned"
where o_id=3;

select*from Order_table;
select*from return_table;

-- before triggress is used for validation and modifiation of data before it stored.
-- after triggress is used for login, auditing and copying data after opercation is done. 