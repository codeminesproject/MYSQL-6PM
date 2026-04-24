CREATE TABLE student_data (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    mobile VARCHAR(15),
    email VARCHAR(100)
);

CREATE TABLE course_data (
    id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_name VARCHAR(100),
    fees DECIMAL(10,2)
);

CREATE TABLE installment_data (
    id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    installment_amount DECIMAL(10,2),
    paid_date DATE
);

INSERT INTO student_data (name, mobile, email) VALUES
('Amit Sharma', '9876543210', 'amit@gmail.com'),
('Priya Verma', '9876543211', 'priya@gmail.com'),
('Rahul Singh', '9876543212', 'rahul@gmail.com'),
('Sneha Patil', '9876543213', 'sneha@gmail.com'),
('Vikas Gupta', '9876543214', 'vikas@gmail.com'),
('Neha Joshi', '9876543215', 'neha@gmail.com'),
('Rohan Mehta', '9876543216', 'rohan@gmail.com'),
('Pooja Yadav', '9876543217', 'pooja@gmail.com'),
('Karan Desai', '9876543218', 'karan@gmail.com'),
('Anjali Nair', '9876543219', 'anjali@gmail.com');

INSERT INTO student_data (name, mobile, email) VALUES
('Aman Sharma', '4565456787', 'aman@gmail.com'),
('Prerna Verma', '7898765432', 'prerna@gmail.com')

INSERT INTO course_data (student_id, course_name, fees) VALUES
(1, 'Python', 15000),
(2, 'Java', 18000),
(3, 'PHP', 12000),
(4, '.NET', 17000),
(5, 'Data Science', 25000),
(6, 'MySQL', 10000),
(7, 'C++', 14000),
(8, 'Web Development', 20000),
(9, 'Machine Learning', 30000),
(10, 'AI Full Stack', 35000);

INSERT INTO course_data (student_id, course_name, fees) VALUES
(12, 'Python', 19000)

INSERT INTO course_data (student_id, course_name, fees) VALUES
(14, 'Python', 15000),
(20, 'Java', 18000)

INSERT INTO installment_data (student_id, course_id, installment_amount, paid_date) VALUES

-- Student 1 (3 payments)
(1,1,5000,'2026-01-05'),
(1,1,4000,'2026-02-05'),
(1,1,6000,'2026-03-05'),

-- Student 2 (2 payments)
(2,2,10000,'2026-01-10'),
(2,2,8000,'2026-02-10'),

-- Student 3 (1 payment)
(3,3,12000,'2026-01-12'),

-- Student 4 (3 payments)
(4,4,7000,'2026-01-15'),
(4,4,5000,'2026-02-15'),
(4,4,5000,'2026-03-15'),

-- Student 5 (2 payments)
(5,5,12000,'2026-01-18'),
(5,5,13000,'2026-02-18'),

-- Student 6 (2 payments)
(6,6,4000,'2026-01-20'),
(6,6,6000,'2026-02-20'),

-- Student 7 (3 payments)
(7,7,5000,'2026-01-22'),
(7,7,4000,'2026-02-22'),
(7,7,5000,'2026-03-22'),

-- Student 8 (2 payments)
(8,8,10000,'2026-01-25'),
(8,8,10000,'2026-02-25'),

-- Student 9 (3 payments)
(9,9,10000,'2026-01-28'),
(9,9,8000,'2026-02-28'),
(9,9,12000,'2026-03-28'),

-- Student 10 (3 payments)
(10,10,15000,'2026-01-30'),
(10,10,10000,'2026-02-28'),
(10,10,10000,'2026-03-30'),

-- Student 12 (2 payments)
(12,11,9000,'2026-02-02'),
(12,11,10000,'2026-03-02');