-- Adding and Subtracting Dates

-- Subtract 1 year from now

SELECT NOW() - INTERVAL '10 YEARS';

SELECT (NOW() + INTERVAL '9 MONTHS 2 DAYS') AT TIME ZONE 'ASIA/KOLKATA';