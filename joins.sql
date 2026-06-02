1. Display employee name and department name
SELECT e.name,
       d.department_name
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id;

Explanation: Returns employees with their department names.

2. Display all employee details with department names

SELECT e.*,
       d.department_name
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id;
3. Show employees working in IT department

SELECT e.name,
       d.department_name
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id
WHERE d.department_name = 'IT';
4. Count employees in each department

SELECT d.department_name,
       COUNT(*)
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id
GROUP BY d.department_name;

5. Find average salary by department

SELECT d.department_name,
       AVG(e.salary)
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id
GROUP BY d.department_name;
6. Find highest salary in each department

SELECT d.department_name,
       MAX(e.salary)
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id
GROUP BY d.department_name;

7. Show all employees even if no department exists

SELECT e.name,
       d.department_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id;

Interview Question: What is LEFT JOIN?

Answer: Returns all rows from the left table and matching rows from the right table.

8. Find employees without departments

SELECT e.*
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id
WHERE d.dept_id IS NULL;

9. Show all departments even if no employees exist

SELECT d.department_name,
       e.name
FROM departments d
LEFT JOIN employees e
ON d.dept_id = e.dept_id;
10. Find total salary by department

SELECT d.department_name,
       SUM(e.salary)
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id
GROUP BY d.department_name;

11. Show employee and manager names
SELECT e.name AS Employee,
       m.name AS Manager
FROM employees e
LEFT JOIN employees m
ON e.manager_id = m.emp_id;

Very Common Interview Question

12. Find employees reporting to Raju
SELECT e.name
FROM employees e
INNER JOIN employees m
ON e.manager_id = m.emp_id
WHERE m.name = 'Raju';
Multiple Table Joins

Assume another table:

projects
project_id	emp_id	project_name
13. Show employee name and project name
SELECT e.name,
       p.project_name
FROM employees e
INNER JOIN projects p
ON e.emp_id = p.emp_id;

14. Show employee, department and 

SELECT e.name,
       d.department_name,
       p.project_name
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id
INNER JOIN projects p
ON e.emp_id = p.emp_id;

15. Find employees who are assigned to projects

SELECT DISTINCT e.name
FROM employees e
INNER JOIN projects p
ON e.emp_id = p.emp_id;