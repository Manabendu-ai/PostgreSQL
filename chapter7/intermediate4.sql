/**
  Left joins : It is a Join that returns all the records in the left table (including the non-foreign key ones)
  and only those records from the right table which has a link on the left table.
 */

SELECT * FROM person
LEFT JOIN car
ON person.car_id = car.id;