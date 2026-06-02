# SQL Theory Questions

## Overview

This file contains commonly asked SQL interview theory questions and answers for practice and revision.

---

## 1. What is SQL?

SQL (Structured Query Language) is used to store, retrieve, update, and manage data in relational databases.

---

## 2. What is a Database?

A database is an organized collection of data stored electronically.

---

## 3. What is a Table?

A table is a collection of related data organized in rows and columns.

---

## 4. What is a Row?

A row represents a single record in a table.

---

## 5. What is a Column?

A column represents a specific attribute or field in a table.

---

## 6. What is a Primary Key?

A Primary Key is a column that uniquely identifies each row in a table and cannot be NULL.

---

## 7. What is a Foreign Key?

A Foreign Key is a column that creates a relationship between two tables.

---

## 8. What is a Constraint?

Constraints are rules applied to table columns to maintain data integrity.

Examples:
- PRIMARY KEY
- FOREIGN KEY
- UNIQUE
- NOT NULL
- CHECK

---

## 9. What is NOT NULL?

It ensures that a column cannot have NULL values.

---

## 10. What is UNIQUE?

It ensures all values in a column are different.

---

## 11. What is DEFAULT?

It sets a default value if no value is provided.

---

## 12. What is a JOIN?

A JOIN is used to combine rows from two or more tables based on a related column.

---

## 13. What is INNER JOIN?

Returns only matching records from both tables.

---

## 14. What is LEFT JOIN?

Returns all records from the left table and matching records from the right table.

---

## 15. What is GROUP BY?

Groups rows that have the same values into summary rows.

---

## 16. What is HAVING?

Filters grouped data after GROUP BY.

---

## 17. What is the difference between WHERE and HAVING?

- WHERE filters rows before grouping
- HAVING filters groups after grouping

---

## 18. What are Aggregate Functions?

Functions that perform calculations on multiple rows.

Examples:
- COUNT()
- SUM()
- AVG()
- MAX()
- MIN()

---

## 19. What is a Subquery?

A query inside another query.

Example:

```sql
SELECT *
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);


20. Difference between DELETE, TRUNCATE, and DROP?
Command	Description
DELETE	Removes selected rows
TRUNCATE	Removes all rows
DROP	Deletes the entire table
21. What is NULL?

NULL represents missing or unknown data.

22. Difference between SQL and NoSQL?
SQL	NoSQL
Structured tables	Document/key-value
Fixed schema	Flexible schema
MySQL, PostgreSQL	MongoDB
23. What is Normalization?

Normalization is the process of organizing data to reduce redundancy and improve data integrity.

24. What is a Primary Key vs Foreign Key?
Primary Key	Foreign Key
Unique	Can repeat
Cannot be NULL	Can be NULL
Identifies row	Links tables
25. Why is SQL used?

SQL is used to manage, retrieve, and manipulate structured data in databases.