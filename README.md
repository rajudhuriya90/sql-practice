SQL Interview Practice Repository
Overview

This repository contains SQL queries that I practiced to strengthen my SQL fundamentals and prepare for technical interviews.

The repository covers commonly asked SQL interview questions ranging from basic queries to intermediate concepts such as GROUP BY, HAVING, JOINS, and Subqueries.

Topics Covered
Basic Queries
SELECT statements
WHERE clause
ORDER BY
DISTINCT
LIKE operator
NULL handling
Aggregate Functions
COUNT()
SUM()
AVG()
MIN()
MAX()
GROUP BY
Count employees by department
Average salary by department
Maximum salary by department
Minimum salary by department
Total salary by department
HAVING
Filter grouped data
Departments with more than 5 employees
Average salary conditions
Total salary conditions
JOINS
INNER JOIN
LEFT JOIN
Self JOIN
Multi-table JOINs
Employee and Department relationship queries
Subqueries
Employees earning above average salary
Highest salary
Second highest salary
Nested queries
Sample Query
SELECT department, COUNT(*)
FROM employees
GROUP BY department
HAVING COUNT(*) > 5;

Question: Find departments having more than 5 employees.

Learning Goals
Strengthen SQL fundamentals
Improve query-writing skills
Practice commonly asked interview questions
Build a structured SQL reference repository
Prepare for DevOps, Software Engineering, and Database-related interviews
Skills Demonstrated
Data Retrieval
Data Filtering
Data Aggregation
Data Grouping
Table Relationships
Query Optimization Basics
Problem Solving Using SQL
Author

Raju Dhuriya

This repository is part of my continuous learning journey in SQL, DevOps, Cloud Computing


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