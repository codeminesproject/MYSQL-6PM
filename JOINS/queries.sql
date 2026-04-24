-- Inner Join used to joined two or more tables with matching rows

select student_data.*,course_data.* from student_data inner join course_data 
on student_data.id = course_data.student_id

select sd.*,cd.* 
from student_data as sd inner join course_data as cd
on sd.id = cd.student_id

select sd.id,sd.name,cd.course_name,cd.fees 
from student_data as sd inner join course_data as cd
on sd.id = cd.student_id

-- Left Join used to provide whole data from left table and only matching rows from right table

select sd.*,cd.* 
from student_data as sd left join course_data as cd
on sd.id = cd.student_id

-- Right Join used to provide whole data from right table and only matching rows from left table

select sd.*,cd.* 
from student_data as sd right join course_data as cd
on sd.id = cd.student_id

-- join more than two table

select sd.id,sd.name,cd.course_name,cd.fees,id.installment_amount,id.paid_date 
from student_data as sd inner join course_data as cd
on sd.id = cd.student_id inner join installment_data id
on cd.id=id.course_id where cd.course_name='Python'

-- cross join

select sd.*,cd.* 
from student_data as sd cross join course_data as cd
