/**

  IN : Takes an array of values and returns query matching those values

 */

SELECT * FROM person WHERE country_of_birth IN(
    'China', 'France', 'Brazil'
) ORDER BY country_of_birth;