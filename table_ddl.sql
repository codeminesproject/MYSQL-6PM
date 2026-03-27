
-- create student table
create table students
(
id int,
name varchar(50),
mobile varchar(15),
gender char(1)
);


/*
1. Add column after table creation
Syntax:
alter table table_name add column_name datatype
*/
alter table students add address varchar(250);
alter table students add amount varchar(100);

/*
2. modify datatype of column 

Syntax:
alter table table_name modify column_name datatype  
*/
alter table students modify amount decimal(10,2);


/*
3.rename column name:
Syntax:
alter table table_name change column old_column_name new_column_name datatype
*/
alter table students change column amount fees decimal(12,4);


/*
4. remove column from table:
Syntax:
alter table table_name drop column column_name
*/
alter table students drop column fees

/*
4. remove table from database:
Syntax:
drop table table_name
*/
drop table students

