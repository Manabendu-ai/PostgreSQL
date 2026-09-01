/**
  PostgreSQL allows us to write if else condition in the SQL directly.
  It always u to check certain condition on the series of data and let's you to compute something out of it.
 */

/**
  syntax:
  IF <condition> THEN
        <statements>
  ELSIF <condition> THEN
        <statements>
  ELSEIF <condition> THEN
        <statements>
  ELSE
        <statement>
 */

-- Let's create a function that assign grades based on the marks:

CREATE OR REPLACE FUNCTION grade(marks DOUBLE PRECISION)
RETURNS VARCHAR
AS
    $$
        BEGIN
            IF marks >= 90.0 THEN
                RETURN 'A+';
            ELSIF marks < 90.0 AND marks >= 80.0 THEN
                RETURN 'A';
            ELSIF marks < 80.0 AND marks >= 70.0 THEN
                RETURN 'B';
            ELSIF marks < 70.0 AND marks >= 55.0 THEN
                RETURN 'C';
            ELSIF marks < 55.0 AND marks >= 40.0 THEN
                RETURN 'D';
            ELSE
                RETURN 'F';
            END IF;
        END;
    $$
LANGUAGE plpgsql;