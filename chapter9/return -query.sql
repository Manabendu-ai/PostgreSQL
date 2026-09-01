/**
  In this will learn how to return a table as from a function
 */

-- Let's build a function that takes in year and return the people who were born in that particular year.

CREATE OR REPLACE FUNCTION getPeopleByBirthYear(yr INT)
RETURNS  TABLE(
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(100)
)
AS
    $$
    BEGIN
        RETURN QUERY
        SELECT person.first_name,
               person.last_name,
               person.email
        FROM
            person
        WHERE
            EXTRACT(YEAR FROM person.date_of_birth)::INT = yr;
    END;
    $$
LANGUAGE plpgsql;

SELECT * FROM getPeopleByBirthYear(2003);

