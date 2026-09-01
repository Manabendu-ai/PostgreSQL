/**

  Indexing : It creates a lookup table with the column and the pointer to the memory location of the row,
  containing this column
 */
/**

  Suppose we have this table(accounts):
  |  id | name      | balance  |
  |  1  | Ram       | 900      |
  |  1  | Adnan     | 1200     |
  |  1  | Pramith   | 950      |
  |  1  | Jevial    | 1600     |

  On Let suppose I ran this query :
  SELECT * FROM accounts
  WHERE balance = 1600;

  we see that our query matches the person with id 4, which is present at the last row of the balance column.
  In general when we apply this WHERE clause we start searching the matching record based on the condition.
  Now if there are millions of records present and let's say the record that we are searching is present at the
  last row, therefore it will be searching all the records right from the starting till the end(one million ).
  So we wee that the query is going to take a lot of time with a time complexity og O(n).
  Now using indexing on that balance column we can reduce the time by O(log n) by imolementing binary search.
  That is what indexing does, it creates a seperate lookup table on of that column in a sorted way and implements
  binary search under the hood. reducing our time complexity, and we can fectch the result in less time.
  Now when this seperate lookup table is created every row contains a pointer to the actual row in the table and while
  retrieving it returns it.

  BTrees is the data structure used to stroe indexing as it is a multilevel format of tree based indexing, which has
  balanced binary search trees.

  When do we apply indexing:
  It is not like applying for each and every column.
  We should apply indexing only for the read intensive databases not for write intensive databases.
 */

CREATE TABLE users(
    id BIGSERIAL PRIMARY KEY NOT NULL,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(50)NOT NULL UNIQUE ,
    city VARCHAR(50) NOT NULL
);

ALTER TABLE users
ADD CONSTRAINT validate_email
CHECK ( email like '%@%');

INSERT INTO users
(name, email, city)
VALUES
('Adnan', 'adnan@google.com', 'vizag'),
('Pramith', 'pramith@texas.com', 'hyderabad'),
('Jevial', 'jevial@databricks.com', 'bengaluru'),
('Archisman', 'archisman@nvidia.com', 'Mumbai');

-- checking the validate email constraint
INSERT INTO users
(name, email, city)
VALUES
    ('Deeksha', 'deeksha.adobe.com', 'gurgaon') ON CONFLICT DO NOTHING ;

SELECT * FROM users;

-- SEARCH a user without indexing using email
SELECT * FROM users
WHERE email = 'archisman@nvidia.com';


-- ANALYZE the retrieval
EXPLAIN ANALYZE
SELECT * FROM users
WHERE email = 'archisman@nvidia.com'; -- Index Scan using users_email_key on users, Execution Time: 0.028 ms
/**
  that's almost certainly a unique index auto-created by a UNIQUE constraint
 */
--
-- -- CREATE AN INDEX on email -- already it is indexed
-- CREATE INDEX email_idx
-- ON users(email);
--
-- -- Let's repeat the last query and see what changes has happened after adding index
-- EXPLAIN ANALYZE
-- SELECT * FROM users
-- WHERE email = 'archisman@nvidia.com'; -- Seq Scan on users, Execution Time: 0.022 ms

-- let's search using name (without index)
EXPLAIN ANALYZE
SELECT * FROM users
WHERE name = 'Archisman'; -- Seq Scan on users , Execution Time: 0.022 ms

-- let's create an index on name column
CREATE INDEX name_index
ON users(name);


