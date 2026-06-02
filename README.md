#SQL Interview Practice Repository
Overview

This repository contains SQL queries that I practiced for interview preparation and database fundamentals.

#The purpose of this repository is to strengthen my understanding of:

SELECT Statements
WHERE Clause
ORDER BY
DISTINCT
Aggregate Functions (COUNT, SUM, AVG, MIN, MAX)
GROUP BY
HAVING
JOINS
Subqueries
SQL Interview Questions

Topics Covered
Basic Queries
Show all records
Select specific columns
Filter records using WHERE
Sort data using ORDER BY
Use DISTINCT values
Pattern matching using LIKE
NULL handling
#GROUP BY
Count records by department
Average salary by department
Maximum and minimum salary by department
Total salary by department
#HAVING
Filter grouped data
Departments with more than 5 employees
Average salary conditions
Total salary conditions
#Subqueries
Employees earning above average salary
Highest salary
Second highest salary
Nested queries
#JOINS
INNER JOIN
LEFT JOIN
Employee and Department relationship queries
Sample Query
SELECT department, COUNT(*)
FROM employees
GROUP BY department
HAVING COUNT(*) > 5;

Question: Find departments having more than 5 employees.

#Learning Goal

The goal of this repository is to build strong SQL fundamentals and prepare for technical interviews for DevOps, Software Engineering, and Database-related roles.


