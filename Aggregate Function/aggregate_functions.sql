select * from employee;

-- get total number of records

select count(*) from employee;

-- get total female employees

select count(*) from employee where gender = 'female'

-- get total female employees from maharashtra

select count(*) from employee where gender = 'female' and state='maharashtra'

-- get minimum, maximum, average salary of employee

select count(*),min(salary),max(salary),avg(salary),sum(salary) from employee

select count(*),min(salary),max(salary),avg(salary),sum(salary) from employee
where gender='female'

select count(*) as total_records,min(salary) as min_salary,
max(salary) as max_salary,avg(salary) as avg_salary,sum(salary) as total_salary from employee
where gender='female' and state='maharashtra'