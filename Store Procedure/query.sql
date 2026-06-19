select * from student_details;

-- zero parameterised sp

create procedure usp_get_all_student_details()
begin
	select * from student_details;
end

-- EXECUTE SP

call usp_get_all_student_details;

-- in parameterised procedure

create procedure usp_get_student_details_by_city(in p_city varchar(50))
begin
	select * from student_details where city=p_city;
end

call usp_get_student_details_by_city('Mumbai');
call usp_get_student_details_by_city('Surat');
call usp_get_student_details_by_city('Bhayander');

create procedure usp_get_student_details_by_city_and_state(in p_city varchar(50),in p_gender varchar(10))
begin
	select * from student_details where city=p_city and gender=p_gender;
end

call usp_get_student_details_by_city_and_state('Mumbai','Male');
call usp_get_student_details_by_city_and_state('Mumbai','Female');

-- out parameterised sp

create procedure usp_get_total_count(out p_total int)
begin
	select count(*) into p_total from student_details;
end

create procedure usp_get_count()
begin
	set @p_totat =0;
	call usp_get_total_count(@p_totat);
	select @p_totat;
end

call usp_get_count;

-- in and out paramtere sp

create procedure usp_get_total_count(in p_city varchar(50),out p_total int)
begin
	select count(*) into p_total from student_details where city=p_city;
end

-- inout paramtere sp

create procedure usp_get_total_count_1(inout p_param varchar(50))
begin
	select count(*) into p_param from student_details where city=p_param;
end

create procedure usp_get_count_1()
begin
	set @p_totat ='Mumbai';
	call usp_get_total_count_1(@p_totat);
	select @p_totat as total;
end

call usp_get_count_1;

-- we can not modify store procedure
-- if so then drop and create again

drop procedure usp_get_count_1

-- insert record using sp

create procedure usp_insert_student_data
(
in p_name varchar(50),
in p_email varchar(50),
in p_mobile varchar(50),
in p_city varchar(50),
in p_gender varchar(10)
)
begin
	insert into student_details(name,email,mobile,city,gender)
	values(p_name,p_email,p_mobile,p_city,p_gender);
end

call usp_insert_student_data('Amit','amit@gmail.com','3453456789','Pune','Male')
















