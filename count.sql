-- Use the COUNT function to count rows instead of listing them:
SELECT COUNT(*) FROM Country;
-- This represents the count of the number of rows in the country table.

-- We can limit the number of rows by using WHERE clause:
SELECT COUNT(*) FROM Country WHERE Population > 1000000;

-- We can use AND operator combined with WHERE clause. The AND operator displays a record if all
-- the conditions separated by AND are TRUE. 
SELECT COUNT(*) FROM Country WHERE Population > 1000000 AND Continent = 'Europe';

-- When we specify a specific column (life expectancy), it only counts the rows where the listed 
-- column has data.
SELECT COUNT(LifeExpectancy) FROM Country;
