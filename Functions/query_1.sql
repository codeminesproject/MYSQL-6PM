select id,name,email,mobile,course_name,fees,
'CodeMines Computer Institute' as institute_name from students;

select id,name,mobile,email,designation,
'CodeMines Computer Institute' as organisation_name from employee

-- function is a collection of statement which will execute when it is called
-- function will compulsary returns value

/*
 Syntax:
 
 create function function_name()
 returns column_datatype
 as
 begin
 	retun logic;
 end
  
 */

create function get_name()
returns varchar(100)
DETERMINISTIC
begin
	return 'CodeMines Computer Institute';
end

select id,name,email,mobile,course_name,fees,
get_name() as institute_name from students;

select id,name,mobile,email,designation,
get_name() as organisation_name from employee

-- modify function (we can not modify function)

-- drop function

drop function get_name

create function get_name()
returns varchar(100)
DETERMINISTIC
begin
	return 'CodeMines Computer';
end
-----------------------------------------------------------

CREATE TABLE orders (
    id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100),
    rate DECIMAL(10,2),
    quantity INT,
    gst_percent INT
);

INSERT INTO orders (product_name, rate, quantity, gst_percent) VALUES
('Laptop',55000,1,18),
('Mouse',500,2,18),
('Keyboard',1500,1,18),
('Monitor',12000,1,18),
('Printer',8000,1,18),
('Pen',20,10,5),
('Notebook',80,5,5),
('Chair',3000,2,18),
('Table',7000,1,18),
('Mobile',20000,1,18),

('Headphones',1500,2,18),
('Speaker',2500,1,18),
('USB Cable',200,3,5),
('Hard Disk',4500,1,18),
('SSD',6000,1,18),
('Fan',2500,2,18),
('AC',35000,1,28),
('TV',40000,1,18),
('Router',3000,1,18),
('Webcam',2000,1,18),

('Bag',1200,2,5),
('Shoes',2500,1,18),
('Shirt',1500,2,5),
('Jeans',2000,1,5),
('Watch',5000,1,18),
('Bottle',300,3,5),
('Lunch Box',400,2,5),
('Calculator',800,1,18),
('Tablet',25000,1,18),
('Projector',30000,1,18),

('Marker',50,10,5),
('Whiteboard',2000,1,18),
('Stapler',300,2,5),
('Paper Rim',250,5,5),
('Desk Lamp',1500,1,18),
('Extension Board',800,2,18),
('Power Bank',2000,1,18),
('Smart Watch',7000,1,18),
('Bluetooth',1800,2,18),
('Charger',1000,2,18),

('Sofa',20000,1,18),
('Bed',30000,1,18),
('Mattress',10000,1,18),
('Curtains',3000,2,5),
('Carpet',5000,1,5),
('Clock',1200,1,18),
('Mirror',2000,1,18),
('Water Purifier',15000,1,18),
('Gas Stove',4000,1,18),
('Mixer',3500,1,18),

('Iron',2500,1,18),
('Kettle',1800,1,18),
('Toaster',2000,1,18),
('Cooker',3000,1,18),
('Pan',1200,2,5),
('Knife Set',1500,1,5),
('Plate Set',2000,1,5),
('Glass Set',1200,1,5),
('Dining Table',25000,1,18),
('Wardrobe',30000,1,18),

('Helmet',2000,1,18),
('Gloves',800,2,5),
('Jacket',4000,1,18),
('Cap',500,2,5),
('Sunglasses',3000,1,18),
('Camera',45000,1,18),
('Tripod',2500,1,18),
('Lens',30000,1,18),
('Drone',80000,1,18),
('Memory Card',1500,2,18),

('Book',500,5,5),
('Magazine',200,3,5),
('Diary',300,4,5),
('Pen Drive',800,2,18),
('External HDD',6000,1,18),
('Gaming Console',45000,1,18),
('Game CD',3000,1,18),
('VR Headset',25000,1,18),
('Fitness Band',3000,1,18),
('Treadmill',35000,1,18),

('Cycle',8000,1,18),
('Scooter Toy',1500,2,5),
('Doll',1200,2,5),
('Puzzle',800,3,5),
('Board Game',1500,1,5),
('Football',1000,2,5),
('Cricket Bat',2000,1,5),
('Badminton Racket',1500,2,5),
('Gym Dumbbells',3000,1,18),
('Yoga Mat',800,2,5);

-------------------------------------------------------------------

select * from orders

select id,product_name,rate,quantity,gst_percent,(rate*quantity) as sales_price,
calculate_gst(rate,quantity,gst_percent) as tax,
((rate*quantity)+calculate_gst(rate,quantity,gst_percent)) as total_price from orders

select id,product_name,rate,quantity,gst_percent,(rate*quantity) as sales_price,
calculate_gst(rate,quantity,gst_percent) as tax,
calculate_total(rate,quantity,gst_percent) as total_price from orders

create function calculate_gst(
p_rate DECIMAL(10,2),
p_quantity int,
p_gst_percent int
)
returns DECIMAL(10,2)
DETERMINISTIC
begin
	return (p_rate*p_quantity)*(p_gst_percent/100);
end

create function calculate_total(
p_rate DECIMAL(10,2),
p_quantity int,
p_gst_percent int
)
returns DECIMAL(10,2)
DETERMINISTIC
begin
	return (p_rate*p_quantity) + calculate_gst(p_rate,p_quantity,p_gst_percent);
end












