-- 2 forms of conditional expressions. 
-- Below, the part that is conditional expression is;
-- "CASE WHEN a THEN 'true' ELSE 'false' END". 
-- it was about testing a, whether it's true or false.
-- in standard SQL zero is considered false and anything
-- that's not a zero is considered true. in this case, we're
-- testing whether a is true or false:
SELECT 
    CASE WHEN a THEN 'true' ELSE 'false' END as boolA,
    CASE WHEN b THEN 'true' ELSE 'false' END as boolB
    FROM booltest
;

-- second form of conditional expression. it tests if a
-- is equal to a particular value. And if it's equal to a
-- particular value, then you get the then clause, and if 
-- not you get the else clause:
SELECT
    CASE a WHEN 1 THEN 'true' ELSE 'false' END AS boolA,
    CASE b WHEN 1 THEN 'true' ELSE 'false' END AS boolB
    FROM booltest
;
