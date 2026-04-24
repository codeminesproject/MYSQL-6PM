select * from employee

-- display salary based in ascending order

select * from employee order by salary asc;

select * from employee order by salary;

-- display salary based in descending order

select * from employee order by salary desc;

-- display name in descending order

select * from employee order by name desc;

-- get employee based on state maharashtra and show data in ascending order by name

select * from employee where state='Maharashtra' order by name asc;

select * from employee where state='Maharashtra' order by name asc, 
salary desc;

select distinct state from employee

select distinct state,city from employee order by state 

select state,count(*) from employee group by state order by count(*)

select * from employee order by salary desc limit 5;

select * from employee order by id desc limit 10 offset 10


select state,count(*) as total_records,min(salary) as min_salary,
max(salary) as max_salary,avg(salary) as avg_salary,
sum(salary) as total_salary from employee
group by state having min(salary)>50000

select state,count(*) as total_records,min(salary) as min_salary,
max(salary) as max_salary,avg(salary) as avg_salary,
sum(salary) as total_salary from employee where salary>50000
group by state

select column from table where group by
having order by limit offset

select salary,count(*) from employee group by salary having count(*)<2