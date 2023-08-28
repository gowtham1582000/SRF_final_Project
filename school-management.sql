create database schoolmanagement

use schoolmanagement
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Class VARCHAR(121),
    DateOfBirth DATE,
    Gender VARCHAR(10),
    ContactNumber VARCHAR(20),
    email NVARCHAR(100), 
    password NVARCHAR(64), 
    Address VARCHAR(100)
);
INSERT INTO Students (StudentID, FirstName, LastName, Class, DateOfBirth, Gender, ContactNumber, email, password, Address)
VALUES
    (1001, 'John', 'Doe', 'Class A', '2000-01-15', 'Male', '123-456-7890', 'john@example.com', 'hashed_password_1', '123 Main St'),
    (1002, 'Jane', 'Smith', 'Class B', '2001-03-22', 'Female', '987-654-3210', 'jane@example.com', 'hashed_password_2', '456 Elm St'),
    (1003, 'Michael', 'Johnson', 'Class A', '2002-05-10', 'Male', '555-123-4567', 'michael@example.com', 'hashed_password_3', '789 Oak Ave');

INSERT INTO Students (StudentID, FirstName, LastName, Class, DateOfBirth, Gender, ContactNumber, email, password, Address)
VALUES (1, 'John', 'Doe', '12th', '2000-01-15', 'Male', '1234567890', 'john@example.com', 'hashed_password', '123 Main St');
CREATE TABLE Teachers (
    TeacherID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    Gender VARCHAR(10),
	email VARCHAR(200),
	password VARCHAR(20),
    ContactNumber VARCHAR(20),
    Address VARCHAR(100)
);
drop table Teachers
INSERT INTO Teachers (TeacherID, FirstName, LastName, DateOfBirth, Gender, email, Password, ContactNumber, Address)
VALUES
    (1, 'John', 'Doe', '1980-05-15', 'Male', 'john.doe@example.com', 'pass123', '123-456-7890', '123 Main St'),
    (2, 'Jane', 'Smith', '1985-08-20', 'Female', 'jane.smith@example.com', 'password456', '987-654-3210', '456 Elm St'),
    (3, 'Michael', 'Johnson', '1992-02-10', 'Male', 'michael.johnson@example.com', 'securepass', '555-123-4567', '789 Oak Ave');

select * from Teachers
-- Courses Table
CREATE TABLE Assignments (
    AssignmentID INT PRIMARY KEY,
    TeacherID INT,
    Subject VARCHAR(50),
    Class VARCHAR(50),
    AssignmentTitle VARCHAR(100),
	DueDate DATE,
    MaxMarks INT
); 
INSERT INTO Assignments (AssignmentID, TeacherID, Subject, Class, AssignmentTitle,DueDate, MaxMarks)
VALUES
    (1, 101, 'Maths', '12th', 'Algebra Homework','2023-08-20', 20)

select * from Assignments

CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT REFERENCES Students(StudentID),
    CourseID INT,
    EnrollmentDate DATE
);

CREATE TABLE StudentMarks (
	marks_id varchar(787),
	studentname varchar(200),
    StudentID INT,
	class varchar(100),
	tamil varchar(100) not null,
	science varchar(100) not null,
	maths varchar(100) not null,
	social varchar(100) not null,
	english varchar(100) not null
);
INSERT INTO StudentMarks (marks_id, studentname, StudentID, class, tamil, science, maths, social, english)
VALUES
    (1, 'John Doe', 1, '10th Grade', '90', '85', '92', '88', '91'),
    (2, 'Jane Smith', 1002, '10th Grade', '88', '92', '87', '89', '90'),
    (3, 'Michael Johnson', 1003, '11th Grade', '78', '84', '80', '82', '88'),
    (4, 'Emily Williams', 1004, '11th Grade', '85', '88', '90', '78', '85');

drop table StudentMarks
select * from StudentMarks
CREATE TABLE Attendance (
    StudentID INT NOT NULL,
	StudentName text,	
    class varchar(100),
    AttendanceDate DATE,
    Attedancemark varchar(100)
);
INSERT INTO Attendance (StudentID, StudentName, class, AttendanceDate, Attedancemark)
VALUES
    (1001, 'John Doe', 'Class A', '2023-08-01', 'Present'),
    (1001, 'John Doe', 'Class A', '2023-08-02', 'Absent'),
    (1001, 'John Doe', 'Class A', '2023-08-03', 'Present'),
    (2001, 'Jane Smith', 'Class B', '2023-08-01', 'Present'),
    (2001, 'Jane Smith', 'Class B', '2023-08-02', 'Present'),
    (2001, 'Jane Smith', 'Class B', '2023-08-03', 'Absent');

drop table Attendance
SELECT * FROM Attendance;
INSERT INTO Students (FirstName, LastName, DateOfBirth, Gender, ContactNumber, Address)
VALUES('John', 'Doe', '2000-01-15', 'Male', '8234567890', '123 Main St')
 
drop table Students
drop table Courses
drop table Enrollments
drop table Grades
drop table Teachers
SELECT * FROM Students;
SELECT * FROM Teachers;
SELECT * FROM Courses;
SELECT * FROM Enrollments;
SELECT * FROM Grades;
	