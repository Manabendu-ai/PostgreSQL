/**

  Functions:
  In PostgreSQl creating a function allows you to group and execute a series of data operations directly
  on SQL server.
  The main use of function is to encapsulate business logic, improve query performance and ensure code reusability.

  syntax:
  CREATE [ OR REPLACE ] FUNCTION
    name ( [ [ argmode ] [ argname ] argtype [ { DEFAULT | = } default_expr ] [, ...] ] )
    [ RETURNS rettype
      | RETURNS TABLE ( column_name column_type [, ...] ) ]
  { LANGUAGE lang_name
    | TRANSFORM { FOR TYPE type_name } [, ... ]
    | WINDOW
    | { IMMUTABLE | STABLE | VOLATILE }
    | [ NOT ] LEAKPROOF
    | { CALLED ON NULL INPUT | RETURNS NULL ON NULL INPUT | STRICT }
    | { [ EXTERNAL ] SECURITY INVOKER | [ EXTERNAL ] SECURITY DEFINER }
    | PARALLEL { UNSAFE | RESTRICTED | SAFE }
    | COST execution_cost
    | ROWS result_rows
    | SUPPORT support_function
    | SET configuration_parameter { TO value | = value | FROM CURRENT }
    | AS 'definition'
    | AS 'obj_file', 'link_symbol'
    | sql_body
  } ...

  simple syntax:

  CREATE OR REPLACE FUNCTION fn_name(parameter types)
  RETURN retype
  AS
  $$
  BEGIN
   /* code block */
  END;
  $$
  LANGUAGE plpgsql;

 */

/*
Let's create a simple function that takes two paraments actual price and discount percent and returns the price
after applying the discount.
 */

CREATE OR REPLACE FUNCTION discount_function(FLOAT, FLOAT)
RETURNS NUMERIC(12,2)
AS
$$
    BEGIN
        RETURN $1 - ($1 * ($2/100));
    END;
$$
LANGUAGE plpgsql;

SELECT * FROM discount_function(25000, 3); -- 3% discount
SELECT * FROM discount_function(25000, 50); -- 50% discount


-- Let's use Alias for the function parameters instead of $1 and so on.
CREATE OR REPLACE FUNCTION discount_function_2(FLOAT, FLOAT)
    RETURNS NUMERIC(12,2)
AS
$$
    DECLARE actual_price ALIAS FOR $1;
        discount ALIAS FOR $2;
BEGIN
    RETURN actual_price - (actual_price * (discount/100));
END;
$$
    LANGUAGE plpgsql;

SELECT * FROM discount_function_2(5000, 5); -- 5% discount

-- Let's use function parameters and data types instead of ALIAS
CREATE OR REPLACE FUNCTION discount_function_new(actual_price DOUBLE PRECISION,discount DOUBLE PRECISION)
    RETURNS NUMERIC(12,2)
AS
$$
BEGIN
    RETURN actual_price - (actual_price * (discount/100));
END;
$$
    LANGUAGE plpgsql;


SELECT * FROM discount_function_new(15000, 4.5); -- 4.5% discount

/**
  note: function overloading doesn't happen here properly so it is better not to repeat the same function name, because
  the earlier signature remains same.
 */