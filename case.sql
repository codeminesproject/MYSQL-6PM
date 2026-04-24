select state,sum(salary) as total_salary,
case 
when sum(salary)<=200000 then 'Lower Salary State'
when sum(salary)>=350000 then 'Higher Salary State'
else 'Moderate Salary State'
end as Salary_Wise_Category
from employee
group by state order by sum(salary)

-------------------------------------------------------------

select * from employee

-- get employee salary range from 40000 to 45000

select * from employee where salary>=40000 and salary<=45000

select * from employee where salary between 40000 and 45000