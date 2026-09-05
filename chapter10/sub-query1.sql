/*
 What is a Sub Query?
 Sub Query is SQL query which is placed inside another query.
 */

SELECT * FROM Employee;

-- Let's find the employees whose salary is more than the avg salary of the employee table;

SELECT AVG(salary) FROM Employee;

SELECT *
FROM Employee
WHERE salary > (
        SELECT AVG(salary) FROM Employee
);