DROP TABLE IF EXISTS test;

CREATE TABLE test (a TEXT, b TEXT, c TEXT NOT NULL);

INSERT INTO test (a, b) VALUES ('one', 'two');
-- We get error. Because c column can not take NULL value.

-- We can set a default value:
CREATE TABLE test (a TEXT, b TEXT, c TEXT DEFAULT 'panda');

INSERT INTO test (a, b) VALUES ('one', 'two');

-- But now, we need to specify if we want to add NULL value:
INSERT INTO test (a, b, c) VALUES ('one', 'two', NULL);

-- if we want any value in a column to be unique, put UNIQUE constraint:
CREATE TABLE test (a TEXT UNIQUE, b TEXT, c TEXT DEFAULT 'panda');

INSERT INTO test (a, b) VALUES ('one', 'two');
INSERT INTO test (a, b) VALUES ('one', 'two');
-- we get error when we execute the same line twice.

INSERT INTO test (a, b) VALUES (NULL, 'two');
INSERT INTO test (a, b) VALUES (NULL, 'two');
-- No error. NULL value is exempt from the UNIQUE constraint. 

-- We can use UNIQUE constraint and NOT NULL constraint at the same time:
CREATE TABLE test (a TEXT UNIQUE NOT NULL, b TEXT, c DEFAULT 'panda');

INSERT INTO test (a, b) VALUES (NULL, 'two');
-- We get error because of the constraint.

SELECT * FROM test;
