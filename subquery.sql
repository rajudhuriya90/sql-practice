1. Find Highest Salary
SELECT *
FROM employees
WHERE salary = (
    SELECT MAX(salary)
    FROM employees
);
Output
Karan 70000
2. Find Second Highest Salary ⭐

Very common interview question.

SELECT MAX(salary)
FROM employees
WHERE salary < (
    SELECT MAX(salary)
    FROM employees
);
Output
60000
3. Employees Earning Above Average Salary
SELECT *
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);
4. Employees Earning Below Average Salary
SELECT *
FROM employees
WHERE salary < (
    SELECT AVG(salary)
    FROM employees
);
5. Employee with Lowest Salary
SELECT *
FROM employees
WHERE salary = (
    SELECT MIN(salary)
    FROM employees
);
6. Employees Working in IT Department

Using a subquery.

SELECT *
FROM employees
WHERE department = (
    SELECT department
    FROM employees
    WHERE name = 'Raju'
);
7. Find Employees with Salary Equal to Maximum Salary
SELECT name
FROM employees
WHERE salary = (
    SELECT MAX(salary)
    FROM employees
);
8. Departments Having More Than 2 Employees
SELECT department
FROM (
    SELECT department, COUNT(*) AS total
    FROM employees
    GROUP BY department
) AS dept
WHERE total > 2;
9. Employees in Department with Highest Average Salary
SELECT *
FROM employees
WHERE department = (
    SELECT department
    FROM employees
    GROUP BY department
    ORDER BY AVG(salary) DESC
    LIMIT 1
);
10. Third Highest Salary
SELECT MAX(salary)
FROM employees
WHERE salary < (
    SELECT MAX(salary)
    FROM employees
    WHERE salary < (
        SELECT MAX(salary)
        FROM employees
    )
);
Interview Questions
Q: What is a Subquery?

Answer:
A subquery is a query nested inside another SQL query.

Example:

SELECT *
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);


SQL Interview Theory Questions
1. What is SQL?

Answer: SQL (Structured Query Language) is used to store, retrieve, update, and manage data in relational databases.

2. What is a Database?

Answer: A database is an organized collection of data stored electronically.

3. What is a Table?

Answer: A table stores data in rows and columns.

4. What is a Row?

Answer: A row represents a single record in a table.

5. What is a Column?

Answer: A column represents a specific attribute of the data.

6. What is a Primary Key?

Answer: A Primary Key uniquely identifies each row in a table and cannot contain NULL values.

7. What is a Foreign Key?

Answer: A Foreign Key creates a relationship between two tables.

8. Difference Between Primary Key and Foreign Key?
Primary Key	Foreign Key
Unique	Can have duplicates
Cannot be NULL	Can be NULL
Identifies records	Creates relationships
9. What is a Constraint?

Answer: Constraints are rules applied to columns to ensure data integrity.

Examples:

PRIMARY KEY
FOREIGN KEY
UNIQUE
NOT NULL
CHECK
10. What is NOT NULL?

Answer: Prevents a column from storing NULL values.

11. What is UNIQUE?

Answer: Ensures all values in a column are unique.

12. What is DEFAULT?

Answer: Provides a default value when no value is specified.

13. What is SQL JOIN?

Answer: A JOIN combines data from two or more tables.

14. What is INNER JOIN?

Answer: Returns only matching records from both tables.

15. What is LEFT JOIN?

Answer: Returns all records from the left table and matching records from the right table.

16. Difference Between INNER JOIN and LEFT JOIN?

Answer:

INNER JOIN → Only matching records.
LEFT JOIN → All left table records + matching right table records.
17. What is GROUP BY?

Answer: Groups rows having the same values into summary rows.

18. What is HAVING?

Answer: Filters grouped data after GROUP BY.

19. Difference Between WHERE and HAVING?

Answer:

WHERE filters rows before grouping.
HAVING filters groups after grouping.
20. What are Aggregate Functions?

Answer: Functions that perform calculations on multiple rows and return a single result.

Examples:

COUNT()
SUM()
AVG()
MAX()
MIN()
21. What is a Subquery?

Answer: A query inside another query.

22. Difference Between DELETE, TRUNCATE, and DROP?
DELETE	TRUNCATE	DROP
Removes selected rows	Removes all rows	Removes table
WHERE allowed	WHERE not allowed	Table removed
Structure remains	Structure remains	Structure removed
23. What is NULL?

Answer: NULL represents a missing or unknown value.

24. What is the Difference Between SQL and NoSQL?
SQL	NoSQL
Relational	Non-relational
Tables	Documents/Key-Value
Fixed Schema	Flexible Schema

Examples:

SQL: MySQL, PostgreSQL
NoSQL: MongoDB
25. What is Normalization?

Answer: Normalization is the process of organizing data to reduce redundancy and improve data integrity.

Benefits:

Avoid duplicate data
Improve consistency
Better database design

