create database OnlineShoppingSystem;
use onlineshoppingsystem;

create table customer_table(
cust_id int primary key,
name varchar(50) not null,
email varchar(50) unique not null,
address varchar(50),
phone_number tinyint);

create table products_tabel(
prod_id int primary key,
prod_name varchar(50) not null,
prod_price decimal not null,
prod_quantiy int not null,
category varchar(50));


create table orders_table(
order_id int primary key,
cust_id int,
order_date date,
status varchar(20) check (status in('Delivered','Pending','Shipped')),
foreign key (cust_id) references customer_table(cust_id));

create table order_details(
order_detail_id int primary key,
order_id int,
prod_id int,
quantity int not null,
subtotal decimal,
foreign key (order_id) references orders_table(order_id),
foreign key (prod_id) references products_tabel(prod_id));

create table payments(
payment_id int primary key,
order_id int,
payment_date date,
payment_method varchar(10) check(payment_method in('Credit Card','UPI','Cash')),
amount_paid decimal,
foreign key (order_id) references orders_table(order_id));

alter table customer_table
modify phone_number varchar(50);

alter table payments
modify payment_method varchar(50);

INSERT INTO customer_table VALUES
(1, 'Bhargav', 'bhargav@gmail.com', 'Hyderabad', '9876543210'),
(2, 'Ganesh', 'ganesh@gmail.com', 'Guntur', '9998887776'),
(3, 'Priya', 'priya@gmail.com', 'Vijayawada', '9123456780'),
(4, 'Ravi', 'ravi@gmail.com', 'Chennai', '9988776655'),
(5, 'Sneha', 'sneha@gmail.com', 'Bangalore', '9871234567');

INSERT INTO Products_tabel VALUES
(101, 'Laptop', 55000.00, 10, 'Electronics'),
(102, 'Smartphone', 30000.00, 20, 'Electronics'),
(103, 'Shoes', 2500.00, 50, 'Fashion'),
(104, 'T-shirt', 800.00, 100, 'Fashion'),
(105, 'Headphones', 1500.00, 30, 'Electronics');

INSERT INTO Orders_table VALUES
(1001, 1, '2025-04-01', 'Shipped'),
(1002, 2, '2025-04-03', 'Pending'),
(1003, 3, '2025-04-04', 'Delivered');

INSERT INTO Order_Details VALUES
(1, 1001, 101, 1, 55000.00),
(2, 1001, 105, 2, 3000.00),
(3, 1002, 102, 1, 30000.00),
(4, 1003, 103, 2, 5000.00),
(5, 1003, 104, 3, 2400.00);

INSERT INTO Payments VALUES
(1, 1001, '2025-04-02', 'Credit Card', 58000.00),
(2, 1003, '2025-04-05', 'UPI', 7400.00);

SELECT * FROM orders_table WHERE cust_id = 1;

SELECT * FROM Products_tabel WHERE category = 'Fashion';
