-- Check Constraint : allows us to add constraint based on a boolean condition
SELECT * FROM person;

-- let's insert this record which has a gender : 'hello'
insert into person (first_name, last_name, gender, email, date_of_birth, country_of_birth)
values ('Mark', 'Wood', 'Hello', 'hellowoody@gmail.com', '1991-07-04', 'England');

SELECT DISTINCT(gender) FROM person;

-- Here we can add a CHECK constrain which will make sure that we can either 'Male' or 'Female' as a GENDER;

ALTER TABLE person
ADD CONSTRAINT gender_constraint
CHECK ( gender = 'Female' OR gender = 'Male' );

DELETE FROM person
WHERE gender <> 'Male' AND gender <> 'Female';

SELECT * FROM person;