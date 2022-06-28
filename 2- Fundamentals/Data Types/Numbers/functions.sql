-- To find the type of an expression, use TYPEOF function:

SELECT TYPEOF(1 + 1) AS "TYPEOF EXAMPLE";
-- result is type "integer"

SELECT TYPEOF(1 + 1.0) AS "TYPEOF EXAMPLE";
-- 1.0 is a real number. Before addition operation,
-- integer number (1) was converted to a real number.
-- Result is type "real"

SELECT TYPEOF('type me') AS "TYPEOF EXAMPLE";
-- Result is type "text"

SELECT TYPEOF('1' + '2') AS "TYPEOF EXAMPLE";
-- Result is type "integer". interesting, ha? Why?
-- Because SQLite converts them to integers (type conversion)
-- before the addition.

SELECT TYPEOF('try' + 'this') AS "TYPEOF EXAMPLE";
-- Result is type "integer" again. In SQLite, it tries
-- to convert to integers. Since they are literally 
-- text, it converts them as 0 anyway. 

-- Division Operation
-- If your operands are all integers, you get integer

SELECT 1 / 5 AS Example;
-- result is 0
SELECT TYPEOF(1 / 5) AS Example;
-- result is type "integer"

SELECT 10 / 2 AS Example;
-- result is 5

SELECT 1.0 / 5 AS Example;
-- result is 0.2 (type "real"). Same outcome:
SELECT CAST(1 AS REAL) / 5 AS Example;

-- modulo operator gives remainder:
SELECT 23 % 3 AS Example;
-- result is 2 (type "integer")

SELECT '23 / 3' AS Operation, 23 / 3 AS Divison, 23 % 3 AS Remainder; 

-- To round a numeric value to a specific number of decimal places,
-- use ROUND function:

SELECT ROUND(4.555555) AS "Round Example";
-- result is 5
-- You can specify exact decimal places you want:

SELECT ROUND(2.5555555, 3) AS "Round Example";
-- result is 2.556
