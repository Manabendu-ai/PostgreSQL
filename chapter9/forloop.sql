/**
  PostgreSQL allows us to write for loops just like any other programming language.
  Syntax:

  FOREACH val IN ARRAY array_name
  LOOP
  /* code block*/
  END LOOP;
 */

-- Let's create a function that takes in array as an input and computes the mean of it.

CREATE OR REPLACE FUNCTION getMean(NUMERIC[])
RETURNS NUMERIC
AS
    $$
    DECLARE val NUMERIC := 0;
        total NUMERIC := 0;
        size NUMERIC := 0;
        n_array ALIAS FOR $1;
    BEGIN

        FOREACH val IN ARRAY n_array
        LOOP
            total := total + val;
            size := size + 1;
        END LOOP ;

        RETURN total/size;
    END;
    $$
LANGUAGE plpgsql;

-- let's test the getMean() function
SELECT getMean(ARRAY [13,8,9,15,23]) AS mean;