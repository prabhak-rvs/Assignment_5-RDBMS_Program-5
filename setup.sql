USE CollegeDB;

DROP TABLE IF EXISTS Student;

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(20),
    Gender VARCHAR(10),
    DepartmentID INT
);
