-- parameter type {in*|out|inout|VARIADIC**} *default **variable number of arguments

-- let's create a function that swaps two numbers

CREATE OR REPLACE FUNCTION swap(INOUT num1 INT, INOUT num2 INT) -- we are not returning anything
AS
    $$
        BEGIN
            SELECT num1, num2 INTO num2, num1; -- swapping logic
        END;
    $$
LANGUAGE plpgsql;

-- swapping two numbers
SELECT * FROM swap(64,74);