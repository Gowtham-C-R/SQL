-- CREATE TABLE employees (
-- 	empID INT(6) UNSIGNED NOT NULL,
--     ename VARCHAR(25) NOT NULL,
--     dept VARCHAR(10) NOT NULL,
--     salary INT(6) UNSIGNED NOT NULL,
--     JDate DATE NOT NULL,
--     MID INT(6) UNSIGNED,
--     PRIMARY KEY (empID));
-- INSERT INTO employees(empID,ename,dept,salary,JDate,MID)
-- VALUES
-- (101, 'Alice',		'HR', 			50000, '2021-01-15', NULL),
-- (102, 'Bob',			'IT', 			70000, '2020-06-23', 101),
-- (103, 'Charlie', 	'Finance', 		80000, '2019-09-12', 101),
-- (104, 'David', 		'IT', 			75000, '2022-02-10', 102),
-- (105, 'Eve',			'Marketing', 	65000, '2021-05-30', NULL);
-- DROP TABLE employees;
-- Questions:
-- 1. Write a query to retrieve all employees who joined after January 1, 2021.
SELECT empID
FROM employees
WHERE JDate > '2021-01-01' OR JDate = '2021-01-01';

-- 2. Find the total number of employees in each department.
SELECT dept, COUNT(*)
FROM employees
GROUP BY dept;

-- 3. Retrieve the name and salary of employees earning more than 70000.
SELECT ename, salary
FROM employees
WHERE salary > 70000;

-- 4. Display the employees along with their manager's name.
SELECT e.ename as 'employee_name', m.ename as 'manager_name'
FROM employees e
INNER JOIN employees m ON e.MID = m.empID;

-- 5. Find the employee with the highest salary
SELECT empID, ename
FROM employees
ORDER BY salary DESC
LIMIT 1;