/**
  Primary Keys: it is a value in our column that allows us to uniquely identify each record.
  It cannot be same for 2 records.
 */

-- let's drop the primary key from the person table
ALTER TABLE person DROP CONSTRAINT person_pkey;

SELECT * FROM person;

-- Adding a primary key;
-- Note : we cannot a primary key to the column when the values are same.
ALTER TABLE person ADD PRIMARY KEY(id);

