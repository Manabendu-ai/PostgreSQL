/**
  Multiple Row Subquery:
  It is the subquery that returns multiple records.
  There are two types of it:
  one that returns multiple rows and multiple cols.
  other that return 1 col but multiple rows.
 */

-- Let's find the employees who earn the highest salary in each dept;

-- highest salary in each dept.
SELECT dept, MAX(salary) AS highest_salary
FROM Employee
GROUP BY dept;

-- Actual query to get the details of all the employees as well:
SELECT *
FROM Employee
WHERE (dept, salary) in (
        SELECT dept, MAX(salary)
        FROM Employee
        GROUP BY dept
    )
ORDER BY salary DESC LIMIT 1;
