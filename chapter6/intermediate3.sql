/**
  Upsert. --> It allows you to perform update or insert and does overwrite the data if existing already or else inserts.
  Like previously we saw ON CONFLICT DO NOTHING, but now suppose if there is a conflict,
  you want to perform operation.
  Let's say a user send a request to create an account and after few seconds the user's mind changes and
  want's to change the email so that time u can use upserts.
 */

INSERT INTO
    person
VALUES
    (1155,'Amara','Tumbelty','Female','atumbelty45@adobe.uk.co','2009-08-24','China',17
    )
ON CONFLICT(id) DO UPDATE SET email = EXCLUDED.email;

SELECT * FROM person WHERE id = 1155;