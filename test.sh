#!/bin/bash

mysql -u root -p"$MYSQL_ROOT_PASSWORD" CollegeDB <<EOF

echo "Checking Student table..."

SELECT * FROM Student;

echo "Checking record count..."
SELECT COUNT(*) AS Total_Records
FROM Student;

echo "Checking Arun..."
SELECT * FROM Student
WHERE StudentID = 1001
AND StudentName = 'Arun'
AND Gender = 'Male'
AND DepartmentID = 101;

echo "Checking Divya..."
SELECT * FROM Student
WHERE StudentID = 1002
AND StudentName = 'Divya'
AND Gender = 'Female'
AND DepartmentID = 102;

echo "Checking Karthik..."
SELECT * FROM Student
WHERE StudentID = 1003
AND StudentName = 'Karthik'
AND Gender = 'Male'
AND DepartmentID = 101;

EOF
