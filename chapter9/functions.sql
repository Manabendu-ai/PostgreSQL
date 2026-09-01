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

CREATE OR REPLACE FUNCTION discount_function(NUMERIC(12,2), NUMERIC(12,2))
RETURNS NUMERIC(12,2)
AS
$$
    BEGIN
        RETURN $1 - ($1 * $2);
    END;
$$
LANGUAGE plpgsql;