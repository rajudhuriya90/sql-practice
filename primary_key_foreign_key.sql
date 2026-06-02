1. Create Department Table with Primary Key
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);
2. Insert Department Data
INSERT INTO departments
VALUES (101, 'IT'),
       (102, 'HR'),
       (103, 'Finance');
3. Create Employee Table with Foreign Key
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary INT,
    dept_id INT,
    FOREIGN KEY (dept_id)
    REFERENCES departments(dept_id)
);
4. Insert Employee Data
INSERT INTO employees
VALUES (1, 'Raju', 50000, 101);
5. Insert Another Employee
INSERT INTO employees
VALUES (2, 'Amit', 45000, 102);
6. View Employee Data
SELECT * FROM employees;
7. Join Employee and Department
SELECT e.emp_name,
       d.dept_name
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id;
8. Add Primary Key After Table Creation
ALTER TABLE employees
ADD PRIMARY KEY (emp_id);
9. Add Foreign Key After Table Creation
ALTER TABLE employees
ADD CONSTRAINT fk_department
FOREIGN KEY (dept_id)
REFERENCES departments(dept_id);
10. Show Table Structure

(MySQL)

DESCRIBE employees;
11. Try Invalid Foreign Key

This will fail because department 999 does not exist.

INSERT INTO employees
VALUES (3, 'Neha', 60000, 999);
12. Remove Foreign Key

First find its name:

SHOW CREATE TABLE employees;

Then:

ALTER TABLE employees
DROP FOREIGN KEY fk_department;
13. Remove Primary Key

ALTER TABLE employees
DROP PRIMARY KEY;
14. Delete Employee Record
DELETE FROM employees
WHERE emp_id = 1;
15. Drop Tables

Drop child table first:

DROP TABLE employees;

Then parent table:

DROP TABLE departments;