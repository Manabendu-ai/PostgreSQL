/**
  PostgreSQL allows us to write if else condition in the SQL directly.
  It always u to check certain condition on the series of data and let's you to compute something out of it.
 */

/**
  syntax:
  IF <condition> THEN
        <statements>
  ELSIF <condition> THEN
        <statements>
  ELSEIF <condition> THEN
        <statements>
  ELSE
        <statement>
 */

-- Let's create a function that assign grades based on the marks:

CREATE OR REPLACE FUNCTION grade(marks DOUBLE PRECISION)
RETURNS VARCHAR
AS
    $$
        BEGIN
            IF marks >= 90.0 THEN
                RETURN 'A+';
            ELSIF marks < 90.0 AND marks >= 80.0 THEN
                RETURN 'A';
            ELSIF marks < 80.0 AND marks >= 70.0 THEN
                RETURN 'B';
            ELSIF marks < 70.0 AND marks >= 55.0 THEN
                RETURN 'C';
            ELSIF marks < 55.0 AND marks >= 40.0 THEN
                RETURN 'D';
            ELSE
                RETURN 'F';
            END IF;
        END;
    $$
LANGUAGE plpgsql;


-- Let's create a Students Table:
CREATE TABLE student(
    id UUID PRIMARY KEY NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    marks DOUBLE PRECISION NOT NULL
);

insert into student (id, first_name, last_name, marks) values ('1ed1ebb5-177c-4486-b542-296728498033', 'Elmer', 'Borrington', 87.61);
insert into student (id, first_name, last_name, marks) values ('709e1370-1e87-48eb-9e7b-92967cf115dc', 'Eberto', 'Lemmer', 77.43);
insert into student (id, first_name, last_name, marks) values ('c1fdd0c1-e456-445c-89ec-acd94120a22d', 'Elia', 'O'' Donohue', 83.56);
insert into student (id, first_name, last_name, marks) values ('4dd9013c-49e7-4323-8667-5b07f893587f', 'Stanton', 'Gillcrist', 53.69);
insert into student (id, first_name, last_name, marks) values ('6ddde88e-dd1a-4d6d-bdbf-989b0a46ac66', 'Stillman', 'Bertelmot', 98.2);
insert into student (id, first_name, last_name, marks) values ('e6863c3e-6044-4607-ad0a-ea9845b941fd', 'Vladimir', 'Janczyk', 91.36);
insert into student (id, first_name, last_name, marks) values ('004fb3aa-ba3e-44ce-b9e4-403cb6165268', 'Ruprecht', 'Miquelet', 57.38);
insert into student (id, first_name, last_name, marks) values ('2d320506-079b-494b-9e90-af55c74ee135', 'Colman', 'MacGorrie', 85.16);
insert into student (id, first_name, last_name, marks) values ('6eae766b-8ce5-4df3-808c-0ec3fcfffdf3', 'Herb', 'Aggio', 84.29);
insert into student (id, first_name, last_name, marks) values ('37a390a2-a47f-43e8-920e-903c60153ec4', 'Britte', 'Bukowski', 37.95);