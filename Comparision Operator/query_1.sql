
-- get student details where fees is less than 30000
select * from students where fees < 30000;

-- get student details where state is maharashtra and fees is less than 30000
select * from students where state='maharashtra' and fees<30000

-- get student details where fees is less than or equal to 30000
select * from students where fees <= 30000;

-- get student details where state is maharashtra and fees is less than or equal to 30000
select * from students where state='maharashtra' and fees<=30000

-- get student details where state is maharashtra and city is mumbai and fees is less than or equal to 30000
select * from students where state='maharashtra' and city='mumbai' and fees<=30000

-- get student details where state is maharashtra and city is pune and fees is less than or equal to 30000
select * from students where state='maharashtra' and city='pune' and fees<=30000

-- get student details where fees is greater than 30000
select * from students where fees > 30000;

-- get student details where state is delhi and fees is greater than 30000
select * from students where state='delhi' and fees>35000

-- get student details where fees is greater than or equal to 35000
select * from students where fees >= 35000;

-- get student details where state is delhi and fees is greater than or equal to 35000
select * from students where state='delhi' and fees>=35000

-- get student where fees between 30000 and 40000
-- using comparision operator
select * from students where fees >= 30000 and fees <=40000

-- get student where fees between 30000 and 40000 and state is maharashtra
-- using comparision operator
select * from students where state='maharashtra' and (fees >= 30000 and fees <=40000)















