/**

  Order By: it takes a column and orders the result that we get back in ascending or descending order.

 */

-- SORT THE record in the ascending order of country of birth
SELECT * FROM person ORDER BY country_of_birth; -- Default it is ASC

SELECT * FROM person ORDER BY country_of_birth DESC ;

SELECT * FROM person ORDER BY email DESC ; -- here interestingly null is higher in order

-- Sorting by multiple columns;
SELECT * FROM person ORDER BY id, email;

SELECT * FROM person ORDER BY date_of_birth;
SELECT * FROM person ORDER BY date_of_birth DESC;