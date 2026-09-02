/**
  FULL OUTER JOIN : It is a Join that returns all the records from both the tables having or not having Foreign key.
  The sequence of output is like:
  1) inner join
  2) right join
  3) left join
 */

SELECT * FROM person
FULL OUTER JOIN car
on person.car_id = car.id;