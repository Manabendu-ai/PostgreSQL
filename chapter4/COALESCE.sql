/**
  coalesce : Allows us to have a default value in case the first one is not present
 */

SELECT COALESCE(1) AS number;
SELECT COALESCE(null, 41) AS number;
SELECT COALESCE(null, null, 34) AS number;
SELECT COALESCE(null, null, 34, 89, 12) AS number; -- it returns the first not null value

-- let's Select all the emails from the person table and for the people not having email must have a text : Email not present!
SELECT COALESCE(email, 'Email not present!') FROM person;