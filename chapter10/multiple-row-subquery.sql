/**
  Multiple Row Subquery:
  It is the subquery that returns multiple records.
  There are two types of it:
  one that returns multiple rows and multiple cols.
  other that return 1 col but multiple rows.
 */

-- Let's find the employees who earn the highest salary in each dept;

-- highest salary in each dept.
SELECT dept, MAX(salary) AS highest_salary
FROM Employee
GROUP BY dept;

-- Actual query to get the details of all the employees as well:
SELECT *
FROM Employee
WHERE (dept, salary) in (
        SELECT dept, MAX(salary)
        FROM Employee
        GROUP BY dept
    )
ORDER BY salary DESC LIMIT 1;

-- single column multiple row subquery

CREATE TABLE Department(
    id BIGSERIAL PRIMARY KEY NOT NULL,
    dept VARCHAR(50) NOT NULL,
    LOCATION VARCHAR(50) NOT NULL
);

insert into Department (dept, location) values ('Electronics', 'Punjab');
insert into Department (dept, location) values ('Automotive', 'Arunachal Pradesh');
insert into Department (dept, location) values ('Tools', 'Bihar');
insert into Department (dept, location) values ('Grocery', 'Meghalaya');
insert into Department (dept, location) values ('Home', 'Chhattisgarh');
insert into Department (dept, location) values ('Industrial', 'Pondicherr');
insert into Department (dept, location) values ('Jewelry', 'Andaman and Nicobar Islands');
insert into Department (dept, location) values ('Sports', 'Lakshadweep');
insert into Department (dept, location) values ('Music', 'Lakshadweep');
insert into Department (dept, location) values ('Movies', 'West Bengal');
insert into Department (dept, location) values ('Outdoors', 'Himachal Pradesh');
insert into Department (dept, location) values ('Kids', 'Punjab');
insert into Department (dept, location) values ('Computers', 'Manipur');
insert into Department (dept, location) values ('Sales', 'Jodhpur');
insert into Department (dept, location) values ('Marketing', 'Gwalior');
