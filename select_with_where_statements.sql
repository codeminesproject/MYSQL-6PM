-- where is a clause used to get data based on conditions

select * from students;

-- get data from students having state as a maharashtra
select * from students where state='maharashtra'

-- get data from students where gender is female
select * from students where gender='f'

-- get data from students where state is maharashtra and gender is male
select * from students where state='maharashtra' and gender='m'

-- get data from students where state is maharashtra, city is mumbai and gender is male
select * from students where state='maharashtra' and city='mumbai' and gender='m'
