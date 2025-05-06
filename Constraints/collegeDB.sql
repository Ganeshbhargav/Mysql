create database collegeDB;
use collegeDB;
create table Students(student_id int PRIMARY KEY,student_name varchar(50) NOT NULL,student_email varchar(50) UNIQUE,student_age int check(student_age between 18 and 30));
insert into students VALUES
(1,'Bhargav','bhargav@gmail.com',20),
(2, 'Ganesh', 'ganesh@gmail.com', 22),
(3, 'Priya', 'priya@gmail.com', 19),
(4, 'Ganesh Bhargav', 'gb@gmail.com', 21);
select * from students;

create table courses(courseId int primary key,courseName varchar(50) not null, credits int check(credits between 1 and 5));
INSERT INTO courses VALUES 
(101, 'Database Systems', 4),
(102, 'Operating Systems', 3),
(103, 'Web Development', 5),
(104, 'Machine Learning', 4);
select * from courses;

CREATE TABLE Enrollment(
    enrollmentID INT PRIMARY KEY,
    studentID INT,
    courseId INT,
    grade CHAR(1) CHECK(grade IN ('A','B','C','D','E','F')),
    enrollDate DATE,
    FOREIGN KEY (studentID) REFERENCES Students(student_id),
    FOREIGN KEY (courseId) REFERENCES Courses(courseId)
);

INSERT INTO Enrollment VALUES 
(1, 1, 101, 'A', '2025-01-15'),
(2, 1, 102, 'B', '2025-01-18'),
(3, 2, 101, 'A', '2025-01-20'),
(4, 3, 103, 'C', '2025-02-01'),
(5, 4, 104, 'B', DEFAULT);
Select * from enrollment;



