-- Show all employees
SELECT * FROM employees;

-- Show employee ID and name
SELECT id, name
FROM employees;

-- Find employees whose salary is greater than 50000
SELECT *
FROM employees
WHERE salary > 50000;

-- Find employees who belong to the IT department
SELECT *
FROM employees
WHERE department = 'IT';

-- Find employees whose salary is between 30000 and 60000
SELECT *
FROM employees
WHERE salary BETWEEN 30000 AND 60000;

-- Find employees who belong to either IT or HR department
SELECT *
FROM employees
WHERE department IN ('IT', 'HR');

-- Find employees whose name starts with 'A'
SELECT *
FROM employees
WHERE name LIKE 'A%';

-- Find employees whose name ends with 'n'
SELECT *
FROM employees
WHERE name LIKE '%n';

-- Find employees whose name contains 'ra'
SELECT *
FROM employees
WHERE name LIKE '%ra%';

-- Show all unique departments
SELECT DISTINCT department
FROM employees;

-- Show employees sorted by salary in ascending order
SELECT *
FROM employees
ORDER BY salary ASC;

-- Show employees sorted by salary in descending order
SELECT *
FROM employees
ORDER BY salary DESC;

-- Show the first 5 employees
SELECT *
FROM employees
LIMIT 5;

-- Count the total number of employees
SELECT COUNT(*)
FROM employees;

-- Find employees who do not have a manager assigned
SELECT *
FROM employees
WHERE manager_id IS NULL;