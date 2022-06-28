-- In order to create tables, use CREATE TABLE statement:
CREATE TABLE test (
  a INTEGER,
  b TEXT
);
-- It creates a table called test according to the given parameters. The column definitions
-- (a INTEGER, b TEXT) are sometimes called database schema or the table schema. Each
-- column definition starts with the column name, in this case a and b, followed by the
-- type declaration. 

SELECT * FROM test;
-- There is no data. 

INSERT INTO test VALUES (1, 'a');
INSERT INTO test VALUES (2, 'b');
INSERT INTO test VALUES (3, 'c');
-- If we have specified all column values as per table column orders, we do not need to 
-- specify column names. We can directly insert records into the table.

SELECT * FROM test;
