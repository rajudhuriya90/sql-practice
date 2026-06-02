1. COUNT()

Counts rows.

SELECT COUNT(*)
FROM employees;
Example Output
5

Meaning: Total 5 employees.

2. SUM()

Calculates total.

SELECT SUM(salary)
FROM employees;
Example
275000
3. AVG()

Calculates average.

SELECT AVG(salary)
FROM employees;
Example
55000
4. MAX()

Finds highest value.

SELECT MAX(salary)
FROM employees;
Output
70000
5. MIN()

Finds lowest value.

SELECT MIN(salary)
FROM employees;
Output
40000

Sample Table
employees
---------------------------------
id | name  | department | salary
---------------------------------
1  | Raju  | IT         | 50000
2  | Amit  | HR         | 40000
3  | Neha  | IT         | 60000
4  | Priya | Finance    | 55000
5  | Karan | IT         | 70000
Aggregate Functions with GROUP BY
Count Employees by Department
SELECT department, COUNT(*)
FROM employees
GROUP BY department;
Output
IT       3
HR       1
Finance  1
Average Salary by Department
SELECT department, AVG(salary)
FROM employees
GROUP BY department;
Maximum Salary by Department
SELECT department, MAX(salary)
FROM employees
GROUP BY department;
Minimum Salary by Department
SELECT department, MIN(salary)
FROM employees
GROUP BY department;
Total Salary by Department
SELECT department, SUM(salary)
FROM employees
GROUP BY department;
Aggregate Functions with HAVING

Departments with more than 2 employees:

SELECT department, COUNT(*)
FROM employees
GROUP BY department
HAVING COUNT(*) > 2;

Departments with average salary above 50000:

SELECT department, AVG(salary)
FROM employees
GROUP BY department
HAVING AVG(salary) > 50000;

