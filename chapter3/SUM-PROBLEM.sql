-- SUM
-- let's sum the total price of all the cars
SELECT SUM(price) FROM car;

-- Total price of each make
SELECT make, SUM(price)
FROM car
GROUP BY make ;