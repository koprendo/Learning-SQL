
-- An id column holds a unique value for each row in a table. 
-- Typically they are automatically populated. In SQLite, 
-- use PRIMARY KEY constraint to create an id column:
CREATE TABLE test (
  id INTEGER PRIMARY KEY,
  a INTEGER,
  b TEXT
);
-- The system will automatically generate a unique sequential number.

-- Now, we'll insert values just for a and b columns, not for the
-- id column. The id column will populate itself.
INSERT INTO test (a, b) VALUES (10, 'a');
INSERT INTO test (a, b) VALUES (11, 'b');
INSERT INTO test (a, b) VALUES (12, 'c');

SELECT * FROM test;
