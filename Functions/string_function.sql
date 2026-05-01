CREATE TABLE students_1 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    surname VARCHAR(50),
    gender ENUM('Male', 'Female', 'Other'),
    mobile VARCHAR(15),
    email VARCHAR(100),
    dob DATE
);

INSERT INTO students_1 (first_name, surname, gender, mobile, email, dob) VALUES
('Amit', 'Sharma', 'Male', '9876543210', 'amit.sharma@gmail.com', '2000-05-12'),
('Priya', 'Patil', 'Female', '9123456780', 'priya.patil@gmail.com', '1999-08-22'),
('Rahul', 'Verma', 'Male', '9988776655', 'rahul.verma@gmail.com', '2001-01-15'),
('Sneha', 'Joshi', 'Female', '9090909090', 'sneha.joshi@gmail.com', '2002-03-10'),
('Karan', 'Mehta', 'Male', '9812345678', 'karan.mehta@gmail.com', '1998-11-05'),
('Pooja', 'Nair', 'Female', '9765432109', 'pooja.nair@gmail.com', '2000-07-19'),
('Rohit', 'Kulkarni', 'Male', '9898989898', 'rohit.k@gmail.com', '1997-09-30'),
('Neha', 'Singh', 'Female', '9001122334', 'neha.singh@gmail.com', '2001-12-25'),
('Vikas', 'Yadav', 'Male', '9112233445', 'vikas.yadav@gmail.com', '1999-04-18'),
('Anjali', 'Gupta', 'Female', '9223344556', 'anjali.gupta@gmail.com', '2002-06-08');

select calculate_gst(200,5,10)

-- get no of values in string
select length('Amit') as total_length

select length(product_name),upper(product_name),
lower(product_name) as total_price from orders

------------------------------------------------------------------------

-- convert text into upper and lower case

select upper('amit'),lower('AMIT')

-- concate

select concat(first_name,' ',surname) from students_1;

select concat_ws(' ','CodeMines','Computer','Institute')

select concat_ws(' ',first_name,surname) from students_1;

------------------------------------------------------------------------

-- get left,right and mid character from string
-- CodeMines Computer

select left('CodeMines Computer',4),right('CodeMines Computer',5),
mid('CodeMines Computer',4,5)

------------------------------------------------------------------------

-- remmove additional space from string

select '         CodeMines      Computer   Institute     '

select TRIM('         CodeMines      Computer   Institute     ') as trim_name
select LTRIM('         CodeMines      Computer   Institute     ') as trim_name
select RTRIM('         CodeMines      Computer   Institute     ') as trim_name

----------------------------------------------------------------------------

-- Replace text from string

select REPLACE(TRIM('         CodeMines      Computer   Institute     '),'      ',' ') as trim_name

----------------------------------------------------------------------------

select replace('Codemines Computer Institute','Codemines','CodeMines') as final_name

----------------------------------------------------------------------------

-- reverse string

select reverse('CodeMines')

------------------------------------------------------------
-- add 0 before number

select LPAD('1234',10,0),RPAD('1234',10,0)

------------------------------------------------------------

-- substring

select SUBSTR('CodeMines',5,3),substring('CodeMines',5,3)

------------------------------------------------------------
-- repeat

select repeat('kachha papad pakka papad',10)

------------------------------------------------------------
-- count no of characters:

select position('e' in 'CodeMines')














