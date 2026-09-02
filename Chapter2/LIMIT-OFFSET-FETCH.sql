/**

  LIMIT : it limits the number of rows retrieved by the specified limit.
  OFFSET : it skips a specific number of rows in the result
  FETCH : it is the official way of using the LIMIT keyword

 */


SELECT  * FROM person where country_of_birth = 'China' LIMIT 5;
SELECT  * FROM person OFFSET 5 LIMIT 5;
SELECT  * FROM person FETCH FIRST 8 ROWS ONLY;

