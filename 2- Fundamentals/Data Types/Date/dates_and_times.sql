-- SQL standard datetime format:
-- 2022-06-21 00:38:51

-- Dates and times are generally stored as UTC

-- SQL date and time types:
-- DATE, TIME, DATETIME, YEAR, INTERVAL

SELECT DATETIME('now') AS Example;
-- returns a timestamp: current date and time in 
-- the UTC timezone: "2022-06-20 21:33:44"

SELECT DATE('now') AS Example;
-- result is 2022-06-20

SELECT TIME('now') AS Example;
-- result is 21:37:14

SELECT DATETIME('now', '+2 day') AS Example;
-- result is 2022-06-22 21:38:09

SELECT DATETIME('now', '-2 month') AS Example;
-- result is 2022-04-20 21:39:20

SELECT DATETIME('now', '+7 year') AS Example;
-- result is 2029-06-20 21:40:11

SELECT DATETIME('now', '+2 day', '-3 year', '+17 minutes') AS Example;
-- result is 2019-06-22 21:58:37
