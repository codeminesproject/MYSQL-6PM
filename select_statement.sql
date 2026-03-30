
/*
Display all data from table

select columns from table_name condition 

* -> means all column
*/

select * from students;

# display column sequence according to user

select name,gender,mobile,id from students;
select id,name from students;

# display data based on condition
select * from students where id=5
select * from students where gender='f'