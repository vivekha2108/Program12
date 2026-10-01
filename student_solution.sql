CREATE DATABASE IF NOT EXISTS CollegeDB;

USE CollegeDB;

-- Department Table
CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

INSERT INTO Department (DepartmentID, DepartmentName) VALUES
(10, 'Computer Science'),
(20, 'Mathematics'),
(30, 'Physics');


-- Student Table
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    DepartmentID INT
);

INSERT INTO Student (StudentID, StudentName, DepartmentID) VALUES
(1001, 'Arun', 10),
(1002, 'Priya', 20),
(1003, 'Kumar', 10),
(1004, 'Divya', 30);


-- Faculty Table
CREATE TABLE Faculty (
    FacultyID INT PRIMARY KEY,
    FacultyName VARCHAR(50),
    DepartmentID INT
);

INSERT INTO Faculty (FacultyID, FacultyName, DepartmentID) VALUES
(501, 'Dr. Ravi', 10),
(502, 'Dr. Meena', 20),
(503, 'Dr. Kumar', 30);


-- Course Table
CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50),
    DepartmentID INT
);

INSERT INTO Course (CourseID, CourseName, DepartmentID) VALUES
(201, 'Database Systems', 10),
(202, 'Data Structures', 10),
(203, 'Mathematics', 20),
(204, 'Physics', 30);


-- Enrollment Table
CREATE TABLE Enrollment (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT
);

INSERT INTO Enrollment (EnrollmentID, StudentID, CourseID) VALUES
(1, 1001, 201),
(2, 1001, 202),
(3, 1002, 203),
(4, 1003, 201),
(5, 1004, 204);
