/**
  Updating Foreign Key columns
 */

-- assign two cars to two people

UPDATE person
SET car_id = 2
WHERE id = 3;

SELECT * FROM person;
