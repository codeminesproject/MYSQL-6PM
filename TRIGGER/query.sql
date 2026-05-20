
create table order_details
(
id int auto_increment primary key,
product varchar(50),
price numeric(10,2),
status varchar(50),
created_date datetime default CURRENT_TIMESTAMP()
)

INSERT INTO order_details (product, price, created_date) VALUES
('Laptop', -123.76, '2026-05-10 10:15:00')

INSERT INTO order_details (product, price, created_date,status) VALUES
('Fridge', -2.76, '2026-05-10 10:15:00','Active')

INSERT INTO order_details (product, price, created_date,status) VALUES
('TV', 2.76, '2026-05-10 10:15:00','Active')

select * from order_details

create trigger trg_insert_order_details
before insert 
on order_details
for each row
begin
	 if new.price < 0 then
	 	set new.price=0;
		set new.status='Inactive';
	 end if;
end


