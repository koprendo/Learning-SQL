-- NULL is a special state for a result with no value. 
SELECT * FROM test WHERE a = NULL;
-- We don't get any result. Beause NULL has no value to satisfy
-- the equal to expression. It is the absence of a value, so we
-- can't test for the NULL with a normal condition. 

-- We need to use a special condition called "IS NULL":
SELECT * FROM test WHERE a IS NULL;

-- The opposite of it is "IS NOT NULL:
SELECT * FROM test WHERE a IS NOT NULL;

-- There is a difference between NULL and an empty string:
INSERT INTO test (a, b, c) VALUES (0, NULL, '');

-- The statements below return different rows:
SELECT * FROM test WHERE c = '';
SELECT * FROM test WHERE c IS NULL;

-- You can create a table with NOT NULL constraint:
CREATE TABLE test (
  a INTEGER NOT NULL,
  b TEXT NOT NULL,
  c TEXT
);

-- We get an error if we execute the statement below. Because we've a NOT NULL 
-- constraint for column a:  
INSERT INTO test (b, c) VALUES ('one', 'two');

SELECT * FROM test;
