-- DELETE clause : it deletes the records form the table based on a condition.
-- always remember to add a WHERE clause while deleting or else without it will erase all the record.

DELETE FROM person
WHERE id = 114;

DELETE FROM person
WHERE email ILIKE '______@%'; --> delete all the records with email having 6 characters before @

SELECT * FROM person;

DELETE FROM person
WHERE gender = 'Male' and country_of_birth = 'Pakistan';

SELECT * FROM person
WHERE country_of_birth = 'Pakistan';