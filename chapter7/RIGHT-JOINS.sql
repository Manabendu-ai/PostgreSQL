/**
  Right joins : It is a Join that returns all the records in the right table (including the non-foreign key ones)
  and only those records from the left table which has a link on the right table.
 */

SELECT * FROM person
RIGHT JOIN car
ON person.car_id = car.id;

-- We can check which person doesn't have a car

SELECT * FROM person
LEFT JOIN car
on person.car_id = car.id
WHERE car.* IS NULL;