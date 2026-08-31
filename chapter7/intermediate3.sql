/**

  INNER JOINS : It is a way of combining two tables.
  It only combines those records which are common in both table.
  If the foreign key is present in both the tables then it combines those 2 record.

 */

SELECT * FROM person
JOIN car ON person.car_id = car.id;

/**
  Here only those records are retrieved that has a link to another (Foreign Key)
 */

-- let's grab certain column from the join
SELECT person.id, person.first_name, person.last_name, car.make, car.model, car.price
FROM person
JOIN car
ON person.car_id = car.id;