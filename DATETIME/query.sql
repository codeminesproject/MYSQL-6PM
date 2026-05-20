create table tbl_date 
(
dob date
)

insert into tbl_date(dob) values('2026-05-15')
insert into tbl_date(dob) values('2024-02-29')
insert into tbl_date(dob) values('2025-02-29')

select * from tbl_date

------------------------------------------------------------

create table tbl_datetime
(
dob datetime
)

insert into tbl_datetime(dob) values('2026-05-15 15:30:00')
insert into tbl_datetime(dob) values(now())

select * from tbl_datetime

------------------------------------------------------------

create table tbl_time
(
dob time
)

insert into tbl_time(dob) values('15:30:00')

select * from tbl_time

-------------------------------------------------------------

create table tbl_year
(
dob year
)

insert into tbl_year(dob) values(1901)
insert into tbl_year(dob) values(1900)

-------------------------------------------------------------

create table student_details
(
id int,
name varchar(100),
dob date,
doa date,
created_date datetime
)

insert into student_details(id,name,dob,doa,created_date)
values(1,'Test','2000-04-12','2026-01-15',now())

select * from student_details

----------------------------------------------

-- get current date time

select now()
select CURRENT_TIMESTAMP()
select CURDATE()
select CURTIME()
select CURRENT_DATE()
select CURRENT_TIME()

-------------------------------------------------

-- get future date and time

select ADDDATE('2026-05-15',interval 5 month)
select ADDDATE('2026-05-15',interval -5 month)
select ADDDATE('2026-05-15',interval 5 year)
select ADDDATE('2026-05-15',interval 5 day)

SELECT ADDTIME('2025-07-09 10:00:00', '02:30:00');

select DATEDIFF('2025-02-12','2025-05-15')
select DATEDIFF('2025-05-15','2025-02-12')

SELECT DATE_FORMAT('2026-05-15', '%W, %M %e, %Y');
SELECT DATE_FORMAT('2026-05-15', '%W');
SELECT DATE_FORMAT('2026-05-15', '%W, %M %e, %Y');

------------------------------------------------------------

select DAY(now()) as today_date, month(now()) as current_month,
year(now()) as year, hour(now()) as hour, minute(now()) as minute,
second(now()) as seconds

------------------------------------------------------------

select EXTRACT(month from now())

select extract(day from now()) as today_date, extract(month from now()) as current_month,
extract(year from now()) as year, extract(hour from now()) as hour, extract(minute from now()) as minute,
extract(second from now()) as seconds

------------------------------------------------------------

select monthname(now()) as name

------------------------------------------------------------

select STR_TO_DATE('03/02/2015','%d/%m/%Y')