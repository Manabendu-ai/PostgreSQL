-- EXTENSIONS : built-in features

SELECT * FROM pg_available_extensions; -- to view all the available extensions


-- To install an extension : CREATE EXTENSION IF NOT EXISTS "ext_name";

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

/*
 let's generate uuid (universally unique identifier)
 */

-- run \df to know which all functions are available.

SELECT uuid_generate_v4(); -- it is recommended to use uuid as the primary key in our tables

/**
  advantages of using uuid:
  * it is less vulnerable to get exploit
  since it is globally unique it is very effective while migrating data across databases without any conflicts.

 */