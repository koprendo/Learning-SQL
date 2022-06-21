-- GROUP BY clause returns one row for each group. For each group,
-- you can apply an aggregate function such as MIN, MAX, SUM,
-- COUNT, or AVG to provide more information about each group.

-- Suppose you have a table called expenses such that:
-- || Name   || Price ||
-- || pencil || 5     ||
-- || pencil || 15    ||
-- || tv     || 900   ||
-- || tv     || 1200  ||
-- || pencil || 10    ||
-- To learn how much you spent for each expense item:

SELECT Name, SUM(Price) AS "Total Amount You Spent" FROM expenses GROUP BY Name;
-- Result is:
-- || Name   || Total Amount You Spent ||
-- || pencil || 30                     ||
-- || tv     || 2100                   ||

-- We can even order it:

SELECT Name, SUM(Price) AS "Total Amount" FROM expenses GROUP BY Name ORDER BY "Total Amount" DESC;
-- Result is:
-- || Name   || Total Amount You Spent ||
-- || tv     || 2100                   ||
-- || pencil || 30                     ||
