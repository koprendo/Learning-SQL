-- The WHERE Clause takes a Boolean logical expression. 
-- Rows are returned only if the expression evaluates as
-- true for that row. 

SELECT Name, Continent, Population FROM Country
  WHERE Population < 100000 ORDER BY Population DESC;
-- It ignores the NULL value.
SELECT Name, Continent, Population FROM Country
  WHERE Population < 100000 OR Population IS NULL ORDER BY Population DESC;
-- OR is a Boolean logical operator. Boolean operators can be used
-- to bind different expressions together. 
SELECT Name, Continent, Population FROM Country
  WHERE Population < 100000 AND Continent = 'Oceania' ORDER BY Population DESC;
  
-- Usage of LIKE operator. The percent sign is a wildcard:
SELECT Name, Continent, Population FROM Country
  WHERE Name LIKE '%island%' ORDER BY Name;
-- Percent sign in either side. It means anything before and anything after
-- as long as it has the letters i-s-l-a-n-d somewhere in the string.

-- If we delete percent side at the end of the wildcard, we receive rows
-- that have values ending with island in the Name column.
SELECT Name, Continent, Population FROM Country
  WHERE Name LIKE '%island' ORDER BY Name;
  
-- If we delete percent side at the beginning of the wildcard, we receive rows
-- that have values starting with island in the Name column.
SELECT Name, Continent, Population FROM Country
  WHERE Name LIKE 'island%' ORDER BY Name;
-- There is no row starting with 'island'. 

-- In order to match any single character use the underscore like this:
-- If we delete percent side at the end of the wildcard, we receive rows
-- that have values ending with island in the Name column.
SELECT Name, Continent, Population FROM Country
  WHERE Name LIKE '_a%' ORDER BY Name;
-- This will match any string where the letter a is the second character 
-- and the first character can be anything, and anything else after the 
-- letter a. 

-- IN operator. It is used to select results that match values in a list:
SELECT Name, Continent, Population FROM Country
  WHERE Continent IN ('Europe', 'Asia') ORDER BY Name;
