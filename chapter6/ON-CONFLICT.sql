/**
  On Conflict, Do nothing
  --> It helps us to deal with duplicate keys
 */
-- INSERT INTO
-- person
-- VALUES
-- (1155,'Amara','Tumbelty','Female','atumbelty45@sciencedaily.com','2009-08-24','China',17
-- ); --> running this gives a Key (id)=(1155) already exists.

INSERT INTO
person
VALUES
(1155,'Amara','Tumbelty','Female','atumbelty45@sciencedaily.com','2009-08-24','China',17
)
ON CONFLICT(id) DO NOTHING; --> Handling the duplicate key error.

/**
  Note:
  ON CONFLICT works only when the column is unique.
  So if the column is not unique then ON CONFLICT will be ineffective.
 */

