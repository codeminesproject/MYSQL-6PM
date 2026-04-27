
/*
View: It is a virtual table 
and it show column and rows from another physical tables

Syntax of create view:

create view view_name
as
query

If view created from more than one table then it will not support insert, update,delete

*/

create view vw_students
as
select sd.id,sd.name,cd.course_name,cd.fees,id.installment_amount,id.paid_date 
from student_data as sd inner join course_data as cd
on sd.id = cd.student_id inner join installment_data id
on cd.id=id.course_id;

select * from vw_students;


select id,name,course_name,fees from vw_students where course_name='Python'

insert into vw_students(name,course_name,fees,installment_amount,paid_date)
values('Test Name','Course Name',20000,5000,'2026-01-01')

--------------------------------------------------------------------
create view vw_getStudentData
as
select id,email from student_data

--------------------------------------------------------------------
alter view vw_getStudentData
as
select id,name,mobile,email from student_data
--------------------------------------------------------------------



-- If view created from single table then we can perform insert, update, delete on view
select * from vw_getStudentData

insert into vw_getStudentData(email) values ('test@gmail.com')

update vw_getStudentData set name='TEST NAME' where id=13

delete from vw_getStudentData where id=13

----------------------------------------------------------------------
-- get defination of view
SHOW CREATE VIEW view_name;

SHOW CREATE VIEW vw_students;

----------------------------------------------------------------------
-- drop view from database

drop view vw_getStudentData