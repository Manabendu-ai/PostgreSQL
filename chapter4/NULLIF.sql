-- Let's tackle division by ZERO

SELECT 10/0; --  ERROR: division by zero
SELECT 10/NULL; --NULL

-- NULLIF -> It takes 2 args and returns the 1st argument is the 2nd argument is not equal to the 1st argument.
-- It returns null if both the arguments are same.

SELECT NULLIF(10,10); --NULL
SELECT NULLIF(10,1); --10
SELECT NULLIF(24,9); --24

SELECT 10 / NULLIF(2, 9);
SELECT 10 / NULLIF(0,0); -- 0,0 are same hence it will be 10/NULL

SELECT COALESCE(10/NULLIF(0,0), 0);