/**
  Scalar Subquery:
  It is subquery which will always return 1 row and 1 column
 */

SELECT *
FROM Employee
WHERE salary > (
        SELECT AVG(salary)
        FROM Employee
    );

/*
 In the above query sample:
        SELECT AVG(salary)
        FROM Employee
    This is a scalar query as it always returns us a single record!
    SQL kinda treat it as a separate table as well.
 */

-- We can write the above query in a different manner as well using JOIN clause

SELECT e.*
FROM Employee e
JOIN (SELECT AVG(salary) sal FROM Employee) avg_sal
ON e.salary > avg_sal.sal;