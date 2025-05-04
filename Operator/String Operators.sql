select * from employee;
select * from employee where doj like '2025%'; -- like operator using %
select * from employee where doj not like '2025%'; -- not like operator
select * from employee where name like 'b_a___v'; -- like operator using _
select * from employee where name ='bhargav' and doj like '%'; 

select concat(id,' ',name) as details from employee; -- concat
select concat_ws(' ',id,name) as details from employee;  -- concat_ws (separated with space)
select concat_ws('*',id,name,salary) as details from employee;  -- concat_ws (separated with star)
