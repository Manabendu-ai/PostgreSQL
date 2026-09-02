-- Creating tables with uuid and using JOINs to retrieve them.


CREATE TABLE office(
    off_id UUID NOT NULL PRIMARY KEY,
    city VARCHAR(100) NOT NULL,
    state VARCHAR(100) NOT NULL,
    country VARCHAR(100) NOT NULL,
    street VARCHAR(100) NOT NULL
);

CREATE TABLE employee(
    emp_id UUID NOT NULL PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    off_id UUID REFERENCES office(off_id),
    UNIQUE (off_id, email)
);

INSERT INTO employee
(emp_id, first_name, last_name, email) VALUES
(uuid_generate_v4(), 'Alex', 'Lees', 'alexless23IT09@adobe.com'),
(uuid_generate_v4(), 'Devon', 'Conway', 'devconway21IT11@adobe.com');

SELECT * FROM employee;

INSERT INTO office
(off_id, city, state, country, street) VALUES
(uuid_generate_v4(), 'Bengaluru','Karnataka', 'India', 'MG Road'),
(uuid_generate_v4(), 'Kolkata','West Bengal', 'India', 'Park Street');

SELECT * FROM office;

UPDATE employee
SET off_id = 'ef3a5543-a8be-4b20-9f56-96bb065c153b'
WHERE emp_id = '42501624-4c79-4126-a0d4-ae1fa8d768ef';

UPDATE employee
SET off_id = 'd451bc42-a080-4c05-9370-98bb1999f77b'
WHERE emp_id = '400936e1-50bc-4361-8186-40b4da95b213';

SELECT * FROM
employee
JOIN office
USING (off_id); --USING is used to join when both the primary and foreign key of the two tables are same.