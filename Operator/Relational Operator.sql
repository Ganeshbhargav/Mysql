create database operators_example;
use operators_example;
create table employee(id int,name varchar(50),salary double,age int,doj date);
insert into employee values
(101,'Ganesh',55000,25,'2025-05-15'),
(102,'Bhargav',65000,23,'2024-04-01'),
(103,'John',100000,30,'2020-03-22'),
(104,'Paul',50000,25,'2025-06-15');
select * from employee;  --  to show all the columns in the table

select id,name,salary,age from employee where salary>=60000;  -- to show the employee salary greater than 60000 using realtional operator >

select * from employee where name ='bhargav'; 
select * from employee where salary<=60000;
select * from employee where salary!=65000;

