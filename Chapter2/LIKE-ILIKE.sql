/**
  Like: it matches text values against the pattern using wildcards.
  wildcard operator : % this represents any character.
  _ : represents a single character.
  ILIKE : it is similar to LIKE, it ignores the case.
 */

SELECT * FROM person
WHERE
    email LIKE '%.com';

SELECT * FROM person
WHERE
    email LIKE '%bloomberg.com';

SELECT * FROM person
WHERE
    email LIKE '%google.%';

SELECT * FROM person
WHERE
    email LIKE '_______@%'; -- 8 character only!

SELECT * FROM person
WHERE
    country_of_birth ILIKE 'p%';