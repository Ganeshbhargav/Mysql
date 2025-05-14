# 🧮 SQL Operators Practice – `employee` Table

Welcome to the **SQL Operators Practice Repository**!  
This project is a collection of SQL queries based on various types of **SQL operators** using a sample `employee` table.

---

## 📂 Database Setup

```sql
-- Create database and use it
CREATE DATABASE operatorsQueries;
USE operatorsQueries;

-- Create employee table
CREATE TABLE employee (
  eid INT PRIMARY KEY AUTO_INCREMENT,
  ename VARCHAR(50),
  salary DECIMAL,
  department VARCHAR(50),
  designation VARCHAR(50),
  bonus DECIMAL NULL,
  hire_date DATE
);
```
## 🔽 Sample Data
```
-- Insert sample employee records
INSERT INTO employee (ename, salary, department, designation, bonus, hire_date) VALUES
('Smith', 25000.00, 'Sales', 'Salesperson', NULL, '2023-02-15'),
('Allen', 28000.00, 'Sales', 'Salesperson', 1000, '2022-11-01'),
('Ward', 30000.00, 'HR', 'Manager', 1500, '2021-07-20'),
('Jones', 20000.00, 'HR', 'Clerk', NULL, '2024-01-10'),
('Martin', 35000.00, 'IT', 'Developer', 2000, '2020-05-05'),
('Blake', 40000.00, 'IT', 'Manager', NULL, '2019-09-30'),
('Clark', 18000.00, 'Finance', 'Analyst', 500, '2023-08-12'),
('Scott', 32000.00, 'Finance', 'Manager', 1200, '2022-03-25'),
('King', 29000.00, 'IT', 'Developer', NULL, '2021-12-01'),
('Turner', 22000.00, 'Sales', 'Clerk', 300, '2024-04-01'),
('Adams', 26000.00, 'HR', 'Analyst', NULL, '2023-06-18'),
('Bennett', 31000.00, 'Finance', 'Analyst', 800, '2022-10-10');
```
## 🧠 Topics Covered
This practice set includes SQL queries using:

*  Basic SELECT & Aliasing
*  Arithmetic Operators
*  Comparison Operators
*  Logical Operators
*  NULL Operators
*  Bitwise Operators
*  String Functions
*  Set & Range Operators
*  Date Functions


##  Example Queries

- **Display employees with a salary hike:**
  ```
  SELECT ename, salary * 1.10 AS salary_after_hike FROM employee;
  ```
  
- **Show bonus status:**
  ```
  SELECT * FROM employee WHERE bonus IS NULL;
  ```

- **Find employees hired more than 90 days ago:**
  ```
   SELECT ename, hire_date + INTERVAL 90 DAY AS probation_end FROM employee;
  ```
- **Bitwise operation:**
  ```
  SELECT eid, eid & 3 AS bit_and FROM employee;
  ```

## 📘 How to Use
1. Clone or download this repository.
2. Import the SQL file into MySQL Workbench or any MySQL-compatible database.
3. Run the queries section-by-section to practice each SQL concept.
4. Explore how different operators behave with real data.

## 🧑‍💻 Author

**Ganesh Bhargav Arani**  
Final Year B.Tech IT Student | Aspiring Full Stack Developer | Data Enthusiast  

🔗 [Connect with me on LinkedIn](https://www.linkedin.com/in/ganeshbhargavarani)


## 💬 Feedback

Found this helpful? Have suggestions?  
Feel free to create an issue or send a pull request (PR)!
