
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
drop table Employee
select * from Employee

