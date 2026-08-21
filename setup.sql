CREATE DATABASE IF NOT EXISTS CollegeDB;

USE CollegeDB;

CREATE TABLE IF NOT EXISTS Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(20),
    Gender VARCHAR(10),
    DepartmentID INT
);
