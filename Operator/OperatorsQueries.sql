create database operatorsQueries;
use operatorsQueries;

create table employee(
eid int primary key auto_increment,
ename varchar(50),
salary decimal,
department varchar(50),
designation varchar(50),
bonus Decimal null,
hire_date date
);

-- inserting values into the table

insert into employee(ename,salary,department,designation,bonus,hire_date) values
('Smith',25000.00,'Sales','Salesperson',null,'2023-02-15'),
('Allen',28000.00,'Sales','Salesperson',1000,'2022-11-01'),
('Ward',30000.00,'HR','Manager',1500,'2021-07-20'),
('Jones',20000.00,'HR','Clerk',null,'2024-01-10'),
('Martin',35000.00,'IT','Developer',2000,'2020-05-05'),
('Blake',40000.00,'IT','Manager',null,'2019-09-30'),
('Clark',18000.00,'Finance','Analyst',500,'2023-08-12'),
('Scott',32000.00,'Finance','Manager',1200,'2022-03-25'),
('King',29000.00,'IT','Developer',null,'2021-12-01'),
('Turner',22000.00,'Sales','Clerk',300,'2024-04-01'),
('Adams',26000.00,'HR','Analyst',null,'2023-06-18'),
('Bennett',31000.00,'Finance','Analyst',800,'2022-10-10');

-- Queries 

 -- to display all records
select * from employee;

-- 1. Write a query to display ename, salary + 1000 AS salary_with_bonus, and department.
select ename, salary+1000 as salary_with_bonus, department from employee;

-- 2 Write a query to display ename and salary*1.10 AS salary_after_hike
select ename, salary*1.10 as salary_after_hike from employee;

-- 3 Write a query to display the designation of all employees.
select designation from employee;

-- 4 Write a query to list all distinct job profiles (values of designation).
select distinct designation from employee;

-- 5  Write a query to display for each employee a single column in the format.. <ename> is working as <designation> in employee id <eld>
select concat(ename,' is working as ',designation,' in employee id ',eid) from employee;
select concat_ws(' ',ename,'is working as',designation,'in employee id',eid)as employee_details from employee;

-- 6 Write a query to display all details of employees whose designation = 'Manager'.
select * from employee where designation= 'Manager';

-- 7 Write a query to display all details of employees with designation = 'Manager' AND salary > 20000
select * from employee where designation='Manager' and salary>20000;

-- 8 Write a query to display all details for employees named 'Smith' or 'Allen'.
select * from employee where ename='Smith' or ename='Allen';



-- Arithmetic Operators


-- 1 Write a query to display ename and salary * 12 AS annual_salary.
select ename,salary*12 as annual_salary from employee;

-- 2 Write a query to display ename and salary - IFNULL(bonus, 0) AS net_salary.
select * from employee where bonus is null;

-- 3 Write a query to display ename and salary % 7 AS salary_mod7.
select ename,salary%7 as salary_mod7 from employee;
select ename,mod(salary,7) as salary_mod7 from employee;

-- 4 Write a query to display ename and salary DIV 1000 AS salary_in_thousands.
select ename,salary/1000 as salary_in_thousands from employee;

-- 5 Write a query to display ename and salary + 500 AS increased_salary.
select ename,salary+500 as increased_salary from employee;

-- 6 Write a query to display ename and salary - 500 AS decreased_salary.
select ename,salary-500 as decreased_salary from employee;


-- Comparison Operators

-- 1  Write a query to display all rows where salary = 30000.
select * from employee where salary=30000;

-- 2 Write a query to display all rows where bonus ! = 1000
select * from employee where bonus!=1000;

-- 3 Write a query to display all rows where salary <> 25000 .
select * from employee where salary<>25000;
select * from employee where salary!=25000;

-- 4 Write a query to display all rows where salary <= 20000
select * from employee where salary<=20000;

-- 5 Write a query to display all rows where salary >= 35000
select * from employee where salary>=35000;

-- 6 Write a query to display all rows where salary > 28000 .
select * from employee where salary>28000;

-- 7 Write a query to display all rows where salary < 22000 
select * from employee where salary<22000;

-- NULL OPERATOR

-- 1. Write a query to display all rows where bonus IS NULL.
select * from employee where bonus is null;

-- 2 Write a query to display all rows where bonus IS NOT NULL
select * from employee where bonus is not null;


--  Logical Operators

-- 1 Write a query to display all rows where department = 'IT' AND designation = "Developer
select * from employee where department ='IT' and designation='Developer';

-- 2 Write a query to display all rows where department 'Sales' OR salary > 30000.
select * from employee where department ='Sales' or salary > 30000;

-- 3 Write a query to display all rows where NOT (bonus IS NULL).
select * from employee where not(bonus is Null);

-- 4 Write a query to display all rows where salary > 25000 XOR bonus IS NOT NULL 
select * from employee where salary>25000 ^ bonus is not null;


-- Bitwise Operators

-- 1 Write a query to select eid and eid & 3 AS bit_and.
select eid,eid & 3 as bit_and  from employee;

-- 2 Write a query to select eid and eid | 8 AS bit_or.
select eid,eid|8 as bit_or from employee;

-- 3 Write a query to select eid and eid ^2 AS bit_xor.
select eid,eid^2 as bit_xor from employee;	

-- 4 Write a query to select eid and ~eid AS bit_not
select eid,cast(~eid as signed) as bit_not from employee;


-- String Operators

-- 1 Write a query to display CONCAT(ename, ' (', designation, ')') AS profile.
select concat(ename,' (',designation,')') as profile from employee;

-- 2 Write a query to display all rows where ename LIKE 'A%'.
select * from employee where ename like'A%';

-- 3 Write a query to display all rows where designation NOT LIKE '%Manager%'
select * from employee where designation not like'%Manager%';


-- Set & Range Operators

-- 1 Write a query to display all rows where department IN ('IT', 'Finance').
select * from employee where department in ('IT','Finance');

-- 2 Write a query to display all rows where department NOT IN ('HR', 'Sales').
select * from employee where department not in('HR','Sales');

-- 3 Write a query to display all rows where salary BETWEEN 20000 AND 30000.
select * from employee where salary between 20000 and 30000;

-- Date Operators

-- Write a query to display ename and hire_date + INTERVAL 90 DAY AS probation_end.
select ename,hire_date,hire_date+interval 90 day as probation_end from employee; 

-- Write a query to display ename and TIMESTAMPDIFF(DAY, hire_date, CURDATE()) AS days_with_company
select ename,timestampdiff(day,hire_date,CURDATE()) AS day_with_company from employee;

