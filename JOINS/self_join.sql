create table employee_details
(
	id int auto_increment primary key,
	name varchar(150),
	designation varchar(50),
	manager_id int
)

select * from employee_details

insert into employee_details(name,designation,manager_id)
values ('Aryan Satam','CEO',0)

insert into employee_details(name,designation,manager_id)
values ('Bhakti Waje','CTO',1)
insert into employee_details(name,designation,manager_id)
values ('Navjeet Kaur','CFO',1)

insert into employee_details(name,designation,manager_id)
values ('Amit Gupta','Project Manager',2)

insert into employee_details(name,designation,manager_id)
values ('Manish Bhati','Head Accountant',2)

insert into employee_details(name,designation,manager_id)
values ('Adarsh Pandey','Software Developer',4)

insert into employee_details(name,designation,manager_id)
values ('Vinayak Chalke','Software Developer',4)

insert into employee_details(name,designation,manager_id)
values ('Anup Mishra','Software Developer',4)

insert into employee_details(name,designation,manager_id)
values ('Sanorita Mishra','Accountant',5)

select e1.id,e1.name,e1.designation,e2.id as manager_id,e2.name as manager_name,
e2.designation as manager_designation
from employee_details e1 inner join employee_details e2
on e1.manager_id=e2.id

select e1.id,e1.name,e1.designation,e2.id as manager_id,e2.name as manager_name,
e2.designation as manager_designation
from employee_details e1, employee_details e2
where e1.manager_id=e2.id