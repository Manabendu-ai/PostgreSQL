-- Exporting query results to csv

UPDATE person
SET car_id = 4
WHERE id = 5;

\copy (SELECT * FROM person
LEFT JOIN car
on car.id = person.car_id) TO '/home/riku/Documents/Database/Postgres/csv_files/result1.csv' DELIMITER ',' CSV HEADER;