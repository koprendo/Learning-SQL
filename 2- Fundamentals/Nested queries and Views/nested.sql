-- In nested queries, a query is written inside a query. The
-- result of inner query is used in execution of outer query.

CREATE TABLE t ( a TEXT, b TEXT );
INSERT INTO t VALUES ( 'NY0123', 'US4567' );
INSERT INTO t VALUES ( 'CA1279', 'FR5678' );
SELECT * FROM t;

SELECT 
  SUBSTR(a, 1, 2) AS State, 
  SUBSTR(a, 3) AS SCode, 
  SUBSTR(b, 1, 2) AS Country, 
  SUBSTR(b, 3) AS CCode 
  FROM t;
  
-- result is
-- | State | SCode | Country | CCode |
-- | NY    | 0123  | US      | 4567  |
-- | CA    | 1279  | FR      | 5678  |

-- See, result of a select statement is actually a table. Because
-- of this, a select statement can be used as a data source in 
-- another select statement. This is called subselect. The code 
-- below uses this as a data source:

SELECT co.Name, ss.CCode FROM (
  SELECT 
    SUBSTR(a, 1, 2) AS State, 
    SUBSTR(a, 3) AS SCode,
    SUBSTR(b, 1, 2) AS Country, 
    SUBSTR(b, 3) AS CCode 
    FROM t
  ) AS ss
  JOIN Country AS co
    ON co.Code2 = ss.Country
;

-- Result is:
-- | Name           | CCode |
-- | United States  | 4567  |
-- | France         | 5678  |

-- You can use subselect after the WHERE clause. The code
-- below gives album id numbers of songs with duration 
-- less than 90 minutes:

SELECT DISTINCT album_id FROM track WHERE duration <= 90;

-- This gives:
-- | album_id |
-- | 11       |
-- | 13       |

-- You can use this list to retrieve corresponding album details 
-- of songs:

SELECT * FROM album WHERE id IN (SELECT DISTINCT album_id FROM track WHERE duration <= 90);

-- With JOIN and subselect, you can get each track's details with 
-- duration less than 90 minutes:

SELECT 
  a.title AS album, 
  a.artist, 
  t.track_number AS seq, 
  t.title, 
  t.duration AS secs
  FROM album AS a
  JOIN (
    SELECT DISTINCT album_id, track_number, duration, title
      FROM track
      WHERE duration <= 90
  ) AS t
    ON t.album_id = a.id
  ORDER BY a.title, t.track_number
;


