-- CREATE A TABLE

/**

  syntax:

  CREATE TABLE table_name(
        column_name + data_type + constraints if any
  )

 */
-- CREATE A PERSON TABLE without constrains
CREATE TABLE person(
    id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender VARCHAR(6),
    date_of_birth DATE
);

-- DROP TABLE person

DROP TABLE person;

-- CREATE A PERSON TABLE without constrains
CREATE TABLE person(
    id BIGSERIAL NOT NULL PRIMARY KEY ,
    first_name VARCHAR(50)  NOT NULL,
    last_name VARCHAR(50)  NOT NULL,
    gender VARCHAR(6)  NOT NULL,
    date_of_birth DATE NOT NULL
);
