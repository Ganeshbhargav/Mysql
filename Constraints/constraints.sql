create database constraints_example;
use constraints_example;

-- 1. NOT NULL constraints---> ensures that a column cannot have a NULL value

create table student(id int not null,name varchar(50) not null);
insert into student values(101,'Bhargav'); -- ✔️ CORRECT column id and name is not null
insert into student(name) values('ganesh'); -- ❌ ERROR column id cannot be null
insert into student(id) values(101); -- ❌ ERROR column name cannot be null
select * from student;


-- 2  UNIQUE Constraint---> Ensures all  values in a columns are different 

create table employee(id int unique not null,name varchar(50) unique);
desc employee;
insert into employee values(1,'Ganesh'); -- ✅ Works fine
insert into employee values(1,'bhargav');  -- ❌ Error: Duplicate entry for 'id'
insert into employee values(2,'Ganesh'); -- ❌ Error: Duplicate entry for 'name'
insert into employee values(1,'Ganesh'); --  ❌ Error: Duplicate entry for 'name' and 'id'
insert into employee(name) values('Bhargav'); --  ❌ Error: id cannot be null
select * from employee;

-- 3 PRIMARY KEY --> uniquely identifies each record and it is a combination of unique and not null

create table products(product_id int primary key,product_name varchar(50));
insert into products values(101,'Mobile Phone'); -- ✅ Works fine
insert into products values(101,'Smart Phone'); -- ❌ Error: Duplicate entry for 'id'
insert into products values(102,'Smart Phone'); -- ✅ Works fine
insert into products(product_name) values('Washing Machine'); -- ❌ Error: 'id' cannot be null

-- 4 CHECK --> ensures the value in a column meets a specific condition
create table account1(id int primary key,name varchar(50),age int check(age>=18));
insert into account1 values(101,'Bhargav',19);
insert into account1 values(102,'Ganesh',17); -- age is less than check(age>=18)


-- 5 DEFAULT Constraint---->Sets a default value for a column if no value is specified.
create table details(id int primary key,country_name varchar(50) default 'INDIA');
insert into details values(101,'USA');
insert into details(id) values(102); -- takes INDIA  country name because default name is india
select * from details;

-- 6 FOREIGN KEY Constraint-->> Ensures referential integrity by linking to a primary key in another table.

CREATE TABLE Departments (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(100)
);

CREATE TABLE Staff (
    StaffID INT PRIMARY KEY,
    StaffName VARCHAR(100),
    DeptID INT,
    FOREIGN KEY (DeptID) REFERENCES Departments(DeptID)
);

insert into departments values(1,'CSE');
insert into departments values(2,'ECE');
insert into departments values(3,'IT');
insert into departments values(4,'EEE');
insert into departments values(5,'CIVIL');
select * from departments;

insert into staff values(101,'Bhargav',1);
insert into staff values(102,'Ganesh',5);
insert into staff values(103,'GANESH BHARGAV',4);
insert into staff values(104,'Gan',1);
insert into staff values(105,'KRISH',3);
select * from staff;



