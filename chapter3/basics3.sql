-- Calculate the average price for each make.

SELECT make,
       ROUND(AVG(price),2)
FROM car
GROUP BY
    make
ORDER BY MAX(price) DESC;

-- MAX price for each make
SELECT make,
       MAX(price)
FROM car
GROUP BY
    make
ORDER BY MAX(price) DESC;

-- MAX price for each make and model
SELECT make, model,
       MAX(price)
FROM car
GROUP BY
    make, model
ORDER BY MAX(price) DESC;