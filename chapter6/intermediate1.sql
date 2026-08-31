/**
  UPDATE : this clause allows to us update a col or multiple col based on the WHERE clause
 */

-- There is an increase in the 5% in the tax of car price above 50000$, so in the car table update the price by 5%

UPDATE car
SET price = price+ (price * 0.05)
WHERE price >= 50000.0;

SELECT * FROM car;
