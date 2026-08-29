<h1 align="center">
  PostgreSQL
  <img src="https://skillicons.dev/icons?i=postgresql&perline=9" height="35" />
</h1>

<p align="center">
  PostgreSQL is a free and open-source object-relational database management system known for its reliability, robust feature set, and strong standards compliance.
</p>

### What is a database?
* In simple terms, database is a place where you can store, manipulate and retrieve data.
* In technical terms, database is an organized collection of structured information or data stored electronically in a computer system.
* e.g : MySQL, PostgreSQL, MongoDB, OracleDB, MariaDB etc.

### What is the difference between postgres and PostgreSQL?
Postgres is the Main engine behind PostgreSQL which is a Structured query language.
<br>
SQL is the language which allows us to work with the relational databases.

### Importance of PostgresQL
<blockquote>
1) Manage data held in relational database.
<br>
2) Easy to learn.
<br>
3) It is very powerfull.
<br>
4) Open source
<br>
5) Extensions
<br>
6) Data Flexibility
<br>
7) High concurrency
</blockquote>

### What is relational database?
Relational database is a type of database that organizes data into rows and columns, which collectively
form a table where the data points are related to each other.
<br>
Now the columns represent the attributes of the data points and each row represent an individual record.

# Let's get started with PostgreSQL
<h1 align="center">
  Chapter - 1
</h1>
Here the basic topics such as How to create a database, drop a database, create a table, drop a table,
datatypes, inserting data into table and a basic select query.

<h3>Create a database</h3>

Now to create a database the following command is used,
<br>
```sql
CREATE DATABASE database_name;
```
let's take an example:
<br>
let's create a database named : **company**
```sql
CREATE DATABASE company;
```
Now it is very important that we end every query with a `;`
<br>
So this was our first command in SQL with many more waiting for us to experiment with!
<br>
There are some handful command which you can try out in your terminal with postgres active.
<br>
`\l` : *This lists all the databases present in your current server instance*
<br>
`\c` : *connect from one database to another*
<br>
`\d` : *describes about a database object*
<br>

### Drop a database
>[!WARNING]
> It is recommended not to use this command in a production database because this deletes your entire data from the database within a fraction of seconds.
```sql
DROP DATABASE database_name;
```
### Creating a Table
The syntax to create a table in your database is given below.
```sql
CREATE TABLE table_name(
    column_name datatype constraints
);
```
let's take an example:
<br>
let's create a table: **employee**
```sql
create table employee(
    id BIGSERIAL PRIMARY KEY NOT NULL,
    first_name VARCHAR(50)NOT NULL ,
    last_name VARCHAR(50)NOT NULL ,
    gender VARCHAR(20) NOT NULL ,
    email VARCHAR(100),
    date_of_birth DATE NOT NULL ,
    country_of_birth VARCHAR(50)NOT NULL
); 
```

### Data types in PostgreSQL
| Name | Aliases | Description |
|---|---|---|
| bigint | int8 | signed eight-byte integer |
| bigserial | serial8 | autoincrementing eight-byte integer |
| bit [ (n) ] | | fixed-length bit string |
| bit varying [ (n) ] | varbit [ (n) ] | variable-length bit string |
| boolean | bool | logical Boolean (true/false) |
| box | | rectangular box on a plane |
| bytea | | binary data ("byte array") |
| character [ (n) ] | char [ (n) ] | fixed-length character string |
| character varying [ (n) ] | varchar [ (n) ] | variable-length character string |
| cidr | | IPv4 or IPv6 network address |
| circle | | circle on a plane |
| date | | calendar date (year, month, day) |
| double precision | float, float8 | double precision floating-point number (8 bytes) |
| inet | | IPv4 or IPv6 host address |
| integer | int, int4 | signed four-byte integer |
| interval [ fields ] [ (p) ] | | time span |
| json | | textual JSON data |
| jsonb | | binary JSON data, decomposed |
| line | | infinite line on a plane |
| lseg | | line segment on a plane |
| macaddr | | MAC (Media Access Control) address |
| macaddr8 | | MAC (Media Access Control) address (EUI-64 format) |
| money | | currency amount |
| numeric [ (p, s) ] | decimal [ (p, s) ] | exact numeric of selectable precision |
| path | | geometric path on a plane |
| pg_lsn | | PostgreSQL Log Sequence Number |
| pg_snapshot | | user-level transaction ID snapshot |
| point | | geometric point on a plane |
| polygon | | closed geometric path on a plane |
| real | float4 | single precision floating-point number (4 bytes) |
| smallint | int2 | signed two-byte integer |
| smallserial | serial2 | autoincrementing two-byte integer |
| serial | serial4 | autoincrementing four-byte integer |
| text | | variable-length character string |
| time [ (p) ] [ without time zone ] | | time of day (no time zone) |
| time [ (p) ] with time zone | timetz | time of day, including time zone |
| timestamp [ (p) ] [ without time zone ] | | date and time (no time zone) |
| timestamp [ (p) ] with time zone | timestamptz | date and time, including time zone |
| tsquery | | text search query |
| tsvector | | text search document |
| txid_snapshot | | user-level transaction ID snapshot (deprecated; see pg_snapshot) |
| uuid | | universally unique identifier |
| xml | | XML data |

### Inserting a data in the employee table
The syntax to insert a record in your table is given below.
```sql
INSERT INTO table_name(
    column_names
) VALUES (
--     corresponding values to the respective columns      
);
```
let's insert 3 records in our employee table:
```sql
INSERT INTO employee(
    first_name, 
    last_name, 
    gender,
    email,
    date_of_birth, 
    country_of_birth) 
VALUES (
    ('Ben', 'Stokes', 'Male', 'bs55@gmail.uk.co', '1991-06-04', 'New Zealand'), 
    ('Alyssa', 'Healy', 'Female', null, '1990-03-24', 'Australia') 
);
```
you can visit *[mockaroo](https://www.mockaroo.com/)* to generate sample datasets.

### Basic select query
Now we have inserted data into the table, but if you want to see them just to confirm
you have the data or not. you can use a `SELECT` query.
<br>
select query is used to retrieve the data from database and display it in a structured format.
<br>
syntax:
```sql
SELECT attributes FROM table_name constraints;
```
`*` : This is a special notation to represent all.
<br>
let's view the employee table:
```sql
SELECT * FROM employee;
```
With this we end our *CHAPTER-1* covering the fundamentals need to move ahead.
