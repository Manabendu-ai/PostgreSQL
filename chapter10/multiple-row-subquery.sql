/**
  Multiple Row Subquery:
  It is the subquery that returns multiple records.
  There are two types of it:
  one that returns multiple rows and multiple cols.
  other that return 1 col but multiple rows.
 */

-- Let's find the employees who earn the highest salary in each dept;

-- highest salary in each dept.
SELECT MAX(salary) AS highest_salary, dept
FROM Employee
GROUP BY dept;