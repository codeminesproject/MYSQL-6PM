/*
 
 trigger - > having two tables
 
 1. NEW
 2. OLD
 
 */

create table orders
(
id int auto_increment primary key,
product varchar(50),
price numeric(10,2),
created_date datetime default CURRENT_TIMESTAMP()
)

create table orders_BK
(
id int auto_increment primary key,
order_id int,
product varchar(50),
price numeric(10,2),
created_date datetime default CURRENT_TIMESTAMP(),
status varchar(100)
)

INSERT INTO orders (product, price, created_date) VALUES
('Laptop', 55000.00, '2026-05-10 10:15:00'),
('Mouse', 799.00, '2026-05-10 11:20:00'),
('Keyboard', 1499.00, '2026-05-11 09:45:00'),
('Monitor', 12500.50, '2026-05-11 14:10:00'),
('Printer', 8999.99, '2026-05-12 16:30:00'),
('Webcam', 2499.00, '2026-05-13 12:00:00'),
('Headphones', 1999.75, '2026-05-13 18:25:00'),
('USB Drive', 650.00, '2026-05-14 08:40:00'),
('Tablet', 22000.00, '2026-05-15 13:55:00'),
('Smartphone', 32000.00, '2026-05-16 17:15:00');


select * from orders
select * from orders_BK

INSERT INTO orders (product, price, created_date) VALUES
('TEST', 99999.00, '2026-05-10 10:15:00');

INSERT INTO orders_BK (order_id,product, price, created_date,status) VALUES
(LAST_INSERT_ID(),'TEST', 99999.00, '2026-05-10 10:15:00','inserted');

delete from orders where id=22

update orders set product='HP Printer',price=1 where id=18

-- ----------------------------------------------------------------------

-- insert before trigger

create trigger trg_insert_orders
before insert
on orders
for each row
begin
	INSERT INTO orders_BK (order_id,product, price, created_date,status) VALUES
	(NEW.id,NEW.product,NEW.price,NEW.created_date,'inserted');
end

-- ----------------------------------------------------------------------

-- delete before trigger

create trigger trg_delete_orders
before delete
on orders
for each row
begin
	INSERT INTO orders_BK (order_id,product, price, created_date,status) VALUES
	(OLD.id,OLD.product,OLD.price,OLD.created_date,'deleted');
end

-- ----------------------------------------------------------------------

-- delete before trigger

create trigger trg_update_orders
before update 
on orders
for each row
begin
	
	INSERT INTO orders_BK (order_id,product, price, created_date,status) VALUES
	(NEW.id,NEW.product,NEW.price,NEW.created_date,'new data');
	
	INSERT INTO orders_BK (order_id,product, price, created_date,status) VALUES
	(OLD.id,OLD.product,OLD.price,OLD.created_date,'old data');
end

-- ----------------------------------------------------------------------

