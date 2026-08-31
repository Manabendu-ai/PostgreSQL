/**
  Serial and Sequence,
  BIGSERIAL is a special data type that auto increments a number
  BIGSERIAL is bigint managed by sequence
 */

SELECT * FROM car_id_seq; -- gives you the details about the BIGSERIAL column
SELECT nextval('car_id_seq'::regclass);

-- We can use Sequence to restart the values as well.

ALTER SEQUENCE person_id_seq RESTART WITH 21;
SELECT nextval('person_id_seq'::regclass);