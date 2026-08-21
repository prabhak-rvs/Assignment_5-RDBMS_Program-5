#!/bin/bash

echo "===================================="
echo "Assignment 5 Autograding"
echo "===================================="

COUNT=$(mysql -h 127.0.0.1 -u root -proot CollegeDB -N -B -e "
SELECT COUNT(*) FROM Student;
")

echo "Total records found: $COUNT"

if [ "$COUNT" -ne 3 ]; then
    echo "FAIL: Expected 3 student records."
    exit 1
fi

ARUN=$(mysql -h 127.0.0.1 -u root -proot CollegeDB -N -B -e "
SELECT COUNT(*) FROM Student
WHERE StudentID=1001
AND StudentName='Arun'
AND Gender='Male'
AND DepartmentID=101;
")

DIVYA=$(mysql -h 127.0.0.1 -u root -proot CollegeDB -N -B -e "
SELECT COUNT(*) FROM Student
WHERE StudentID=1002
AND StudentName='Divya'
AND Gender='Female'
AND DepartmentID=102;
")

KARTHIK=$(mysql -h 127.0.0.1 -u root -proot CollegeDB -N -B -e "
SELECT COUNT(*) FROM Student
WHERE StudentID=1003
AND StudentName='Karthik'
AND Gender='Male'
AND DepartmentID=101;
")

if [ "$ARUN" -eq 1 ] && [ "$DIVYA" -eq 1 ] && [ "$KARTHIK" -eq 1 ]; then
    echo "PASS: All student records are correct."
else
    echo "FAIL: Student records are incorrect."
    exit 1
fi

echo "===================================="
echo "ASSIGNMENT 5 PASSED"
echo "===================================="
