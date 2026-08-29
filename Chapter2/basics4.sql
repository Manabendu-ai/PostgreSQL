/**

  WHERE : allows us to filter the data based on a condition.

 */

-- Let's say I want to retrieve only the data where the gender is FEMALE.

SELECT * FROM person WHERE gender = 'Female';

-- AND : it is used to combine conditions.
-- I can filter the data with more than one condition.

SELECT * FROM person WHERE gender = 'Male' AND (country_of_birth = 'China' OR country_of_birth = 'Indonesia');

SELECT * FROM person WHERE email IS NOT NULL AND gender = 'Male';


