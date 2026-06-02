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


