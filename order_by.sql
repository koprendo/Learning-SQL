SELECT Name FROM Country;

SELECT Name FROM Country ORDER BY Name;

SELECT Name FROM Country ORDER BY Name DESC;

SELECT Name FROM Country ORDER BY Name ASC;

SELECT Name, Continent FROM Country ORDER BY Continent, Name;
-- This orders by continent first, and then name. 

SELECT Name, Continent, Region FROM Country ORDER BY Continent DESC, Region, Name;
