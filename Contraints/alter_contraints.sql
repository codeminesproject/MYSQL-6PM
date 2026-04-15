create table student_details
(
id int auto_increment primary key,
name varchar(100),
mobile varchar(15),
email varchar(100),
fees numeric(10,2),
city varchar(50)
);


create table course_details
(
id int,
course_name varchar(100),
student_id int
);

-------------------------------------------------------------------
/*
Not Null
*/

alter table student_details modify name varchar(100) not null;

-------------------------------------------------------------------

/*
default
*/

alter table student_details alter column city set default 'Mumbai';

-------------------------------------------------------------------

/*
check
*/

alter table student_details add constraint check_fees check(fees>0)

-------------------------------------------------------------------

/*
Unique
*/
alter table student_details add constraint uk_email unique(email)
alter table student_details add constraint uk_mobile unique(mobile)
-------------------------------------------------------------------

/*
Primary Key
*/
alter table student_details add constraint pk_id primary key(id)
alter table student_details modify column id int auto_increment
-------------------------------------------------------------------

/*
Foreign Key
*/
alter table course_details add constraint fk_student_id foreign key(student_id)
references student_details(id)
-------------------------------------------------------------------




