-- SELECT statement returns a set of result from a query. It is not compulsory to capitalize the SELECT keyword, but
-- because it is more readable, it is widely used in this way. 
SELECT 'Hello, World';
-- In SQL, single quotes are used for literal strings. And it is generally good practice to include semicolon at the 
-- end of the statement. In this statement, it takes 'Hello, World' as a data source.

SELECT 'Hello, World' AS Result;
-- Column name was 'Hello World', now it is Result. AS clause can be used to name a column, it creates an alias 
-- identifier for the column. 

SELECT * FROM Country;
-- Gets all the rows and columns from the Country table. FROM clause tells where to get the data from.

SELECT * FROM Country ORDER BY Name;
-- Order (alphabetical order) it by the Name column.

-- It is possible to specify columns by giving a comma delimited list:
SELECT Name, LifeExpectancy FROM Country ORDER BY Name;

-- We can give LifeExpectancy an alias by using AS clause:
SELECT Name, LifeExpectancy AS "Life Expectancy" FROM Country ORDER BY Name;
-- Use double quotes because the identifier has spaces in it. We wouldn't need the quotes if we were going to call 
-- it just Expectancy. 

-- In order to select some of all rows, use the WHERE clause. 
SELECT Name, Continent, Region FROM Country WHERE Continent = 'Europe';
-- WHERE clause takes a logical expression that represents a comparison. 

SELECT Name, Continent, Region FROM Country WHERE Continent = 'Europe' ORDER BY Name;

-- In order to limit the rows in the result, use the LIMIT clause:
SELECT Name, Continent, Region FROM Country WHERE Continent = 'Europe' ORDER BY Name LIMIT 5;

-- In order to get next 5 rows, use OFFSET:
SELECT Name, Continent, Region FROM Country WHERE Continent = 'Europe' ORDER BY Name LIMIT 5 OFFSET 5;
-- This starts limiting after the first 5 rows. 

SELECT Name, Continent, Region FROM Country WHERE Continent = 'Europe' ORDER BY Name LIMIT 5 OFFSET 10;

-- NOTE// These caluses need to be in a particular order:
--        1) ORDER BY has to be after any WHERE clause
--        2) LIMIT and OFFSET need to be last 
--        3) FROM need to be first 
