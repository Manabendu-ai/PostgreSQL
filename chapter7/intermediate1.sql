/**
  FOREIGN KEYS : It is a column in a table that references a PRIMARY KEYS in another table.
  It takes us to the concept of RELATIONSHIP.

  Suppose we want to connect one table to another and retrieve the joined table,
  that is possible here using JOINs and FOREIGN KEYs.

  Since PostgreSQL is a relational database it allows us to build relationship between two or more tables.
  Types of relationship:
  1) ONE-TO-ONE relationship
  2) ONE-TO-MANY relationship
  3) MANY-TO-ONE relationship
  4) MANY-TO-MANY relationship

  we will learn about one-to-one relationship first,
  example we have person table and car table and let's build a realtionship between the two.
  Person has a Car.
  Person can have only ONE car.
  A car can only belong to ONE person. (this is only in our scenario.)
 */

DROP TABLE person;
DROP TABLE car;

create table person (
    id BIGSERIAL PRIMARY KEY NOT NULL,
    first_name VARCHAR(50)NOT NULL ,
    last_name VARCHAR(50)NOT NULL ,
    gender VARCHAR(20) NOT NULL ,
    email VARCHAR(100),
    date_of_birth DATE NOT NULL ,
    country_of_birth VARCHAR(50)NOT NULL
);

CREATE TABLE car (
    id BIGSERIAL PRIMARY KEY NOT NULL ,
    make VARCHAR(100) NOT NULL,
    model VARCHAR(100) NOT NULL,
    price NUMERIC(12,2) NOT NULL
);

/**
  Now here if I try to insert person table first it will simply fail because the relation car does not exist.
 */

insert into person (id, first_name, last_name, email, gender, date_of_birth, country_of_birth) values (1, 'Ilario', 'Barock', 'ibarock0@hao123.com', 'Male', '2003-02-11', 'Indonesia');
insert into person (id, first_name, last_name, email, gender, date_of_birth, country_of_birth) values (2, 'Giusto', 'Vogel', 'gvogel1@freewebs.com', 'Male', '2004-01-21', 'Brazil');
insert into person (id, first_name, last_name, email, gender, date_of_birth, country_of_birth) values (3, 'Martyn', 'Astley', 'mastley2@constantcontact.com', 'Male', '2002-08-09', 'Philippines');
insert into person (id, first_name, last_name, email, gender, date_of_birth, country_of_birth) values (4, 'Olympia', 'Wolfendell', 'owolfendell3@whitehouse.gov', 'Female', '2003-09-26', 'Indonesia');
insert into person (id, first_name, last_name, email, gender, date_of_birth, country_of_birth) values (5, 'Sebastiano', 'Duns', 'sduns4@nbcnews.com', 'Male', '2006-03-29', 'Ireland');



insert into car (id, make, model, price) values (1, 'Audi', 'R8', '46763.08');
insert into car (id, make, model, price) values (2, 'Nissan', 'Rogue', '94303.90');
insert into car (id, make, model, price) values (3, 'Mitsubishi', 'Outlander', '26575.25');
insert into car (id, make, model, price) values (4, 'Pontiac', 'Grand Prix', '32605.23');
insert into car (id, make, model, price) values (5, 'Ford', 'Focus', '22164.38');


SELECT * FROM person; -- at this stage we see that the car_id column is empty bcoz we haven't assigned it yet.
SELECT * FROM car;