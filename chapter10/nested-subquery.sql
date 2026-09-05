-- Find the stores whose sales were better than the avg sales across all the stores.

SELECT * FROM Sales;


SElECT *
FROM
    Sales s1
WHERE (
    SELECT SUM(price)
    FROM Sales s2
    WHERE s2.store_name = s1.store_name
) > (
        SELECT AVG(total_sales)
        FROM (
                SELECT SUM(s3.price) AS total_sales
                FROM Sales s3
                GROUP BY s3.store_name
             ) t
    );