create table students
(
id int auto_increment primary key,
name varchar(100),
email varchar(100)
)

create table course
(
id int auto_increment primary key,
course_name varchar(100),
student_id int,
foreign key (student_id) references students(id)
)

insert into students(name,email) values('Navjeet','navjeet@gmail.com');
insert into students(name,email) values('Bhakti','bhakti@gmail.com');
insert into students(name,email) values('Amit','amit@gmail.com');
insert into students(name,email) values('Student','student@gmail.com');
insert into students(name,email) values('Jeet','jeet@gmail.com');
insert into students(id,name,email) values(4,'Jeet','jeet@gmail.com');

insert into course(course_name,student_id) values('Python Full Stack',1)
insert into course(course_name,student_id) values('Python Full Stack',2)
insert into course(course_name,student_id) values('Data Science',1)

-----------------------------------------------------------------------------
select * from students
select * from course
-------------------------------------------------------------------------------
delete from students where id=1
delete from course where id=4
---------------------------------------------------------------------------
delete from course
delete from students
-----------------------------------------------------------------------------
truncate table students