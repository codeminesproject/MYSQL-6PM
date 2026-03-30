create table students
(
id int,
name varchar(50),
mobile varchar(15),
gender char(1)
);

/*
Add data into table 

Type 1:
insert into table_name values(value_1,value_2,.....)
 */

insert into students values(1,'Jeet','9876543212','M');

/*
Type 2:
insert into table_name(column_name_1,column_name_2,...)
values (value_1,value_2,....)
*/

insert into students(id,name) values(2,'CodeMines');
insert into students(gender,name) values('f','Navjeet');

/*

Type 3: insert nultiple rows in single query
insert into table_name(column_name_1,column_name_2,...)
values (value_1,value_2,...),
(value_1,value_2,...),
(value_1,value_2,...),
(value_1,value_2,...)
*/

insert into students(id,name,mobile,gender)
values (4,'Manish','6765676543','M'),
(5,'Amit','5678765432','M'),
(6,'Bhakti','8767890987','F');











