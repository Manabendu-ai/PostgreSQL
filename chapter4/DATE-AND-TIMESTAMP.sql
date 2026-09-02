/**
  DATE and TIMESTAMP
 */

SELECT NOW(); -- Gives us the current timestamp in utc;

SELECT NOW()::DATE; -- Extracts the current date from the timestamp;
SELECT NOW()::TIME; -- Extracts the time from the timestamp;

SELECT AGE(NOW()::DATE, DATE '2006-06-23'); -- Calculates the AGE
SELECT AGE(DATE '2006-06-23'); -- Calculates the AGE

SELECT CLOCK_TIMESTAMP(); -- timestamp with time zone

SELECT NOW() AT TIME ZONE 'ASIA/KOLKATA'; -- gives you the timestamp with the mentioned time zone
SELECT NOW() AT TIME ZONE 'ASIA/KOLKATA' AT TIME ZONE 'ASIA/TOKYO'; -- gives you the timestamp with the mentioned time zone



