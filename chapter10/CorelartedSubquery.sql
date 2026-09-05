/*
 Correlated subquery :
 subquery which is related to the outer query.
 The processing of the subquery depends upon the values returned by the outer query.
 */

-- Find the employees in each department who earns more than the avg salary of each department.

SELECT e.*
FROM Employee e
WHERE salary > (
    SELECT AVG(salary)
    FROM Employee
    WHERE dept = e.dept
);

-- Find the departments who do not have any employees

SELECT *
FROM department d
WHERE not EXISTS (
    SELECT 1 FROM Employee e  WHERE d.dept = e.dept
);
