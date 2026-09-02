/**

  GROUP BY : it arranges identical data into group using an aggregate function.
  HAVING : it is used along with GROUP BY, and it allows you to add an extra filter after aggregation.

 */

-- let's select the number of peoples in each of the countries.

SELECT country_of_birth, COUNT(*) FROM person
GROUP BY
    country_of_birth
ORDER BY country_of_birth;

SELECT country_of_birth, COUNT(*) FROM person
GROUP BY
    country_of_birth
    HAVING
             COUNT(*) > 50
ORDER BY country_of_birth;
