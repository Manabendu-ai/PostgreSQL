-- Apply 15% discount to the prices of the car and retrieve the new price

SELECT id, make, model, price,
       ROUND(price - (price * 0.15),2) as discounted_price
FROM car;