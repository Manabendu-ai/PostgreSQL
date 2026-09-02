-- UNIQUE CONSTRAINTS
/**
    cunt(column_name) — counts only the rows where that specific column is not NULL in each group.
    count(*) — counts all rows, period, no matter what's NULL or not.
 */
SELECT email, count(*) FROM person --> will count all records and group to the emails
GROUP BY email ;

SELECT email, count(email) FROM person --> will count all the non-null email and group to the emails.
GROUP BY email ;

insert into person
    (first_name, last_name, gender, email, date_of_birth, country_of_birth)
values ('Martin',
        'meyer',
        'Male',
        'bsurmeyer1@1und1.de',
        '1999-03-31',
        'Denmark');

SELECT email, COUNT(*) as count FROM person
GROUP BY email HAVING COUNT(*) > 1; -- we get the duplicate emails and logically email must be unique

/**
  Having a unique constraint means u can have unique values per column,
  It is not same as primary key as the job of the primary key is to identify each record uniquely
 */

DELETE FROM person where email='bsurmeyer1@1und1.de';

-- Adding a constraint
ALTER TABLE person
ADD CONSTRAINT unique_email_address
UNIQUE (email);

