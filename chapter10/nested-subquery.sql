-- Find the stores whose sales were better than the avg sales across all the stores.

SELECT * FROM Sales;

-- Find total sales of each store

SELECT store_name, SUM(price)
FROM Sales
GROUP BY (store_name);