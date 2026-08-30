-- EXTRACT : it allows us to extract a part from a timestamp

SELECT EXTRACT(YEAR FROM NOW()); -- Extracting the actual year
SELECT EXTRACT(MONTH FROM NOW()); -- Extracting the actual month
SELECT EXTRACT(DAY FROM NOW()); -- Extracting the actual DAY
SELECT EXTRACT(CENTURY FROM NOW()); -- Extracting the actual CENTURY

-- AGE:
SELECT first_name, last_name, date_of_birth, EXTRACT(YEARS FROM AGE(date_of_birth)) as Age
FROM person;