Departments with more than 5 employees
SELECT department, COUNT(*)
FROM employees
GROUP BY department
HAVING COUNT(*) > 5;
Departments with average salary greater than 50000
SELECT department, AVG(salary)
FROM employees
GROUP BY department
HAVING AVG(salary) > 50000;
Departments with total salary greater than 100000
SELECT department, SUM(salary)
FROM employees
GROUP BY department
HAVING SUM(salary) > 100000;

1. Salary Greater Than 50000
SELECT *
FROM employees
WHERE salary > 50000;
2. Salary Less Than 50000
SELECT *
FROM employees
WHERE salary < 50000;
3. Salary Equal to 50000
SELECT *
FROM employees
WHERE salary = 50000;
4. Department = IT
SELECT *
FROM employees
WHERE department = 'IT';
5. Department Not IT
SELECT *
FROM employees
WHERE department != 'IT';

or

SELECT *
FROM employees
WHERE department <> 'IT';
6. Salary Greater Than or Equal to 50000
SELECT *
FROM employees
WHERE salary >= 50000;
7. Salary Between 40000 and 60000
SELECT *
FROM employees
WHERE salary BETWEEN 40000 AND 60000;
8. Employees in IT or HR
SELECT *
FROM employees
WHERE department IN ('IT', 'HR');
9. Employee Name Starts with 'R'
SELECT *
FROM employees
WHERE name LIKE 'R%';
10. Employee Name Ends with 'a'
SELECT *
FROM employees
WHERE name LIKE '%a';
11. Employee Name Contains 'ri'
SELECT *
FROM employees
WHERE name LIKE '%ri%';
12. IT Employees with Salary > 50000
SELECT *
FROM employees
WHERE department = 'IT'
AND salary > 50000;
13. IT or Finance Employees
SELECT *
FROM employees
WHERE department = 'IT'
OR department = 'Finance';
14. Find NULL Values
SELECT *
FROM employees
WHERE department IS NULL;
15. Find NOT NULL Values
SELECT *
FROM employees
WHERE department IS NOT NULL;