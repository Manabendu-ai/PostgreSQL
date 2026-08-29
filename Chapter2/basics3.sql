/**

  Distinct : it is used to return all the unique values of a column.
  removes duplicates from your query.

 */

-- Let's View all the country of birth in a sorted order
SELECT country_of_birth FROM person ORDER BY country_of_birth ;

-- we see a lot of duplicates;

-- let's say I want to see the list of all the unique countries

SELECT DISTINCT(country_of_birth) FROM person ORDER BY country_of_birth; -- Now wee see in total 118 countries out of 1000 records.