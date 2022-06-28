-- Aggregate data is information derived from more than 
-- one row at a time. And COUNT is an aggregate
-- function:

SELECT COUNT(*) FROM Country;
-- result is:
-- || COUNT(*) ||
-- || 220      ||
-- it counts rows and returns a value

-- in order to apply this aggregate function to groups
-- of data rather than the entire query:

SELECT Region, COUNT(*) AS Count FROM COUNTRY GROUP BY Region;

-- result is one row per region and the aggregate value 
-- as a column in the resulting table. 

-- Aggregate functions also work for joined queries as 
-- well as straight queries:

SELECT a.title AS album, COUNT(t.track_number) AS Tracks
  FROM track AS t
  JOIN album AS a 
    ON a.id = t.album_id
  GROUP BY a.id
  ORDER BY Tracks DESC, album;
  
-- album table includes album names and their artists.
-- track table inludes each song with an album id_number
-- that tells which album they belongs to.Bearing this in mind,
-- the code above gives how many tracks each album has.
-- Result is like:
-- || album  || Tracks ||
-- || album1 || 15     ||
-- || album2 || 10    ||
-- || album3 || 8      ||

-- if you just want to get album names that have more 
-- than 9 tracks, use HAVING clause:

SELECT a.title AS album, COUNT(t.track_number) AS Tracks
  FROM track AS t
  JOIN album AS a 
    ON a.id = t.album_id
  GROUP BY a.id
  HAVING Tracks >= 10
  ORDER BY Tracks DESC, album;
  
-- The HAVING clause is like a where clause for aggregate
-- data. WHERE clause is to operate on the non-aggregate
-- parts of the same query. Result of the code above is:
-- || album  || Tracks ||
-- || album1 || 15     ||
-- || album2 || 10    ||

-- Alright, what is the difference between COUNT(*) and
-- COUNT(column_name)? 
-- Answer: first one counts all the rows whereas second one
-- counts only the non null values in that column. 

-- Average function:
SELECT AVG(Population) FROM Country;

-- To get minimum value use MIN function
-- To get maximum value use MAX function

-- Suppose you want to count values in a column,
-- more specifically, you want to count values 
-- distinctively. And if values are repeating in
-- that column, it can be troublesome. Use DISTINCT
-- in these situations:

SELECT COUNT(DISTINCT HeadOfState) FROM Country;

