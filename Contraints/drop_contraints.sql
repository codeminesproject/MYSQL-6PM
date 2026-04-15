/*
Remove Not Null
*/

alter table student_details modify name varchar(100) null;

-------------------------------------------------------------

/*
Remove default
*/

alter table student_details alter column city drop default
alter table student_details modify city varchar(50) null;

-------------------------------------------------------------
/*
Remove check
*/

alter table student_details drop constraint check_fees

-------------------------------------------------------------------

/*
Remove unique
*/

alter table student_details drop constraint uk_email;
alter table student_details drop constraint uk_mobile;

-------------------------------------------------------------------

/*
Remove primary 
*/

alter table student_details modify column id int

alter table student_details drop primary key

-------------------------------------------------------------------

/*
Remove foreign key 
*/

alter table course_details drop foreign key fk_student_id

-------------------------------------------------------------------



