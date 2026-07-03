-- Index: it is a secper data base stucture that spceer data retable. 
-- it allow database to allocate the data quiely without scan entie table. 
-- index need addersion storage so slowly slow dowe the update, insert delect operaties. 
use first;
create index idx_id on employees(id);
select * from employees where id=1;
select * from employees;

-- composite index: 

create index idx_dept_name  on employees (dept,name);  
select* from employees where dept="it" and name="sagar";

-- views: in sql it a table create by sql qutes. it donot storage data specertion both table have some data. it use secturity and accect limlt table.

CREATE TABLE student (
    s_id INT PRIMARY KEY,
    name VARCHAR(50),
    class VARCHAR(20),
    Math_marks INT,
    math_assigment INT,
    attendaner DECIMAL(5,2)
);
INSERT INTO student
(s_id, name, class, Math_marks, math_assigment, attendaner)
VALUES
(1, 'Rahul', 'BSc IT', 85, 90, 95.5),
(2, 'Priya', 'BSc IT', 78, 88, 92.0),
(3, 'Amit', 'BSc IT', 92, 95, 98.0),
(4, 'Neha', 'BSc IT', 67, 75, 85.5);

 create view Math_view as (Select name, s_id, class, Math_marks, math_assigment, attendaner from student);
 drop view Math_view;
 select * from Math_view;
 create or replace view Math_view as (Select s.name, s.s_id, s.class, c.dept, s.Math_marks, s.math_assigment, s.attendaner from student s left join collage c on s.s_id=c.id);