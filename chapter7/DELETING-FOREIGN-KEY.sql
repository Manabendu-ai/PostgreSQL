/**
  Deleting record with foreign keys.
  We cannot delete a record from a table whose primary key is still being used a foreign key by some other record
  in some other table (that violates the foreign key constrain).
  There are two ways in this situation:
  1) Delete that record which is referencing the primary key
  2) Removing the forign key from that record which is referencing the primary key
 */

-- going with option 2:

UPDATE person
SET car_id = null
WHERE id = 3;

DELETE FROM car
where id = 2;

SELECT * FROM person;
SELECT * FROM car;