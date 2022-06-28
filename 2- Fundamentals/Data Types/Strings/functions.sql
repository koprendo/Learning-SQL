-- WARNING! These functions vary across platforms. 
-- Here, the functions used are valid for SQLite.
-- Don't forget to consult your documentation.

-- LENGTH function returns the length of the given string:

SELECT LENGTH('four') AS "Find Length of My Little String";

-- Suppose you have a table called city. You want to get 
-- names of the cities with the length of them. Code below
-- gives this information with an order:

SELECT Name, LENGTH(Name) AS Len FROM City ORDER BY Len DESC, Name;

-- To get substring of any string, use SUBSTR function:

SELECT SUBSTR('Lord of The Rings', 13) AS "Substring Example";

-- Second argument tells function which index number it should 
-- start. Notice index numbers start from 1, not 0.

-- If you want to restrict the substring you get, use third
-- argument and specify the substring length:

SELECT SUBSTR('Lord of The Rings', 13, 4) AS "Substring Example";

-- Suppose you have a table called album and it has column
-- called released. Take a snapshot:
-- || released   ||
-- || 2009-05-26 ||
-- || 1967-11-05 ||
-- The code below gives this result:
-- || released   || Year  || Month || Day ||
-- || 2009-05-26 || 2009  || 05    || 26  ||
-- || 1967-11-05 || 1967  || 11    || 05  ||

SELECT released, 
  SUBSTR(released, 1, 4) AS Year,
  SUBSTR(released, 6, 2) AS Month,
  SUBSTR(released, 9, 2) AS Day
  FROM album ORDER BY released;

-- In order to remove spaces, use TRIM function.
-- TRIM function removes spaces from beginning and ending,
-- LTRIM function removes spaces from begining,
-- RTRIM function removes spaces from ending:

SELECT TRIM('    Remove me    ') AS Example;
SELECT LTRIM('    Remove me    ') AS Example;
SELECT RTRIM('    Remove me    ') AS Example;

-- Also, you can specify what character to remove:

SELECT TRIM('++++Remove me++++', '+') AS Example;

-- LOWER function lower the all characters in a string,
-- and UPPER function makes uppercase each character:

SELECT LOWER('LOWer Me') AS Example;
SELECT UPPER('up mE') AS Example;
SELECT UPPER(Name) FROM City ORDER BY Name;
