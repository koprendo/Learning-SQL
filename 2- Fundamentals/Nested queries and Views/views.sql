-- Views in SQL are kind of virtual tables. A view also has rows 
-- and columns as they are in a real table in the database. We 
-- can create a view by selecting fields from one or more tables
-- present in the database. A view can either have all the rows
-- of a table or specific rows based on certain conditions. 

-- To establish a view, use CREATE VIEW:
CREATE VIEW trackView AS 
  SELECT id, album_id, title, track_number, duration / 60 AS m,
    duration % 60 AS s FROM track;
    
-- Code above saves that view (trackView) under table called track
-- and you can use that view in a query:

SELECT a.title AS album, a.artist, t.track_number AS seq, t.title, t.m, t.s
  FROM album AS a
  JOIN trackView AS t
    ON t.album_id = a.id
  ORDER BY a.title, t.track_number
;

-- You can drop this view:

DROP VIEW IF EXISTS trackView;

-- Another view example:

CREATE VIEW joinedAlbum AS
  SELECT a.artist AS artist,
      a.title AS album,
      t.title AS track,
      t.track_number AS trackno,
      t.duration / 60 AS m,
      t.duration % 60 AS s
    FROM track AS t
    JOIN album AS a
      ON a.id = t.album_id
;

SELECT * FROM joinedAlbum;
SELECT * FROM joinedAlbum WHERE artist = 'Miles Davis';

SELECT artist, album, track, trackno, 
   m || ':' || substr('00' || s, -2, 2) AS duration
    FROM joinedAlbum;

-- Remember, "||" operator concatenates strings

DROP VIEW IF EXISTS joinedAlbum;
