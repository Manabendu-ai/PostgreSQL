-- Alias : allows to rename our column while retrieving.

SELECT id, make, model,
       price as actual_price,
       price * 0.18 as tax ,
       price + (price* 0.18) as total_price
FROM car;