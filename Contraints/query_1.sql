
-- name varchar(50) here by default contraint will be null constraint

/*
1. Not Null
If we want value of column to be mandatory then we use not null contraint
*/

create table Employee
(
id int,
name varchar(50) not null,
mobile varchar(15) not null,
email varchar(50)
)

insert into Employee(id,name,mobile,email) 
values(1,'Santtosh','123456790','test@gmail.com')
--------------------------------------------------------------------------------
/*
2. Unique
If we want value of column to be mandatory then we use not null contraint

Unique column can contains duplicate null values
*/

create table Employee
(
id int,
name varchar(50) not null,
mobile varchar(15) unique,
email varchar(50)
)

insert into Employee(id,name,mobile,email) 
values(1,'Santtosh','123456790','test@gmail.com')

-- 123456790 mobile number already present so below data will not be inserted
insert into Employee(id,name,mobile,email) 
values(2,'Amit','123456790','amit@gmail.com')

-- here mobile is null contraint with unique so it can contains null values
insert into Employee(id,name,email) 
values(3,'Manish','manish@gmail.com')

insert into Employee(id,name,email) 
values(2,'Amit','amit@gmail.com')


--------------------------------------------------------------------------------
/*
3. Unique with not null
If we want value of column to be mandatory then we use not null contraint

Unique column can contains duplicate null values
*/

create table Employee
(
id int,
name varchar(50) not null,
mobile varchar(15) not null unique,
email varchar(50)
)

insert into Employee(id,name,mobile,email) 
values(1,'Santtosh','123456790','test@gmail.com')

-- 123456790 mobile number already present so below data will not be inserted
insert into Employee(id,name,mobile,email) 
values(2,'Amit','123456790','amit@gmail.com')

-- here mobile is not null with unique contraint so we cant insert data without mobile
insert into Employee(id,name,email) 
values(3,'Manish','manish@gmail.com')

--------------------------------------------------------------------------------
/*
4. default
If we want to set default value for column then we can use default contraint
*/

create table Employee
(
id int,
name varchar(50) not null,
mobile varchar(15) not null unique,
email varchar(50),
country varchar(20) default 'India'
)

insert into Employee(id,name,mobile,email) 
values(1,'Santtosh','123456790','test@gmail.com')

insert into Employee(id,name,mobile,email,Country) 
values(2,'Amit','3456789034','test@gmail.com','USA')

--------------------------------------------------------------------------------
/*
5. check
If we want to check value of column before insertion then we can use check
*/

create table Employee
(
id int,
name varchar(50) not null,
mobile varchar(15) not null unique,
email varchar(50),
salary numeric(10,2) not null check(salary>0),
country varchar(20) default 'India'
)

insert into Employee(id,name,mobile,email,salary) 
values(1,'Santtosh','123456790','test@gmail.com',1)

--------------------------------------------------------------------------------

/*
6. Primary Key
Primary key is a key which uniquely identify row of table

Primary key is by default not null and unique constraint
One table contains only one primary key
*/

create table Employee
(
id int primary key,
name varchar(50) not null,
mobile varchar(15) not null unique,
email varchar(50),
salary numeric(10,2) not null check(salary>0),
country varchar(20) default 'India'
)

insert into Employee(id,name,mobile,email,salary) 
values(1,'Santtosh','123456790','test@gmail.com',1)

insert into Employee(name,mobile,email,salary) 
values('Manish','1231234567','manish@gmail.com',100000)

/*
7. Primary Key with auto_increment

*/

create table Employee
(
id int auto_increment primary key,
name varchar(50) not null,
mobile varchar(15) not null unique,
email varchar(50),
salary numeric(10,2) not null check(salary>0),
country varchar(20) default 'India'
)

insert into Employee(name,mobile,email,salary) 
values('Santtosh','123456790','test@gmail.com',1)

insert into Employee(name,mobile,email,salary) 
values('Manish','6787654321','manish@gmail.com',56565)

insert into Employee(id,name,mobile,email,salary) 
values(100,'Amit','9878987654','amit@gmail.com',56565)

insert into Employee(name,mobile,email,salary) 
values('Navjeet','6767656765','navjeet@gmail.com',56565)

insert into Employee(id,name,mobile,email,salary) 
values(3,'Navjeet','4567567890','navjeet@gmail.com',56565)

insert into Employee(name,mobile,email,salary) 
values('Bhakti','4534578909','bhakti@gmail.com',56565)

/*
7. unique key with auto_increment

*/

create table Employee
(
id int auto_increment unique key,
name varchar(50) not null,
mobile varchar(15) not null unique,
email varchar(50),
salary numeric(10,2) not null check(salary>0),
country varchar(20) default 'India'
)

insert into Employee(name,mobile,email,salary) 
values('Santtosh','123456790','test@gmail.com',1)

insert into Employee(name,mobile,email,salary) 
values('Manish','6787654321','manish@gmail.com',56565)

insert into Employee(id,name,mobile,email,salary) 
values(100,'Amit','9878987654','amit@gmail.com',56565)

insert into Employee(name,mobile,email,salary) 
values('Navjeet','6767656765','navjeet@gmail.com',56565)

insert into Employee(id,name,mobile,email,salary) 
values(3,'Navjeet','4567567890','navjeet@gmail.com',56565)

insert into Employee(name,mobile,email,salary) 
values('Bhakti','4534578909','bhakti@gmail.com',56565)

/*
8. foreign key: It is column which refer primary key column of another table

*/

create table Student
(
id int auto_increment primary key,
name varchar(50) not null,
mobile varchar(15) not null unique
)


create table Course
(
id int auto_increment primary key,
course_name varchar(50) not null,
fees numeric(10,2),
student_id int,
foreign key(student_id) references Student(id)
)

insert into Student(name,mobile) values('Bhakti','4567234567')
insert into Course(course_name,fees,student_id) values('Python Full Stack',120000,3)


drop table Employee
select * from Employee

