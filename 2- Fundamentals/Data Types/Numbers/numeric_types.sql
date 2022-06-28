-- Fundamental numeric types: integer and real
-- Integer types mostly fall into 3 categories:
-- 1) INTEGER(precision)
-- 2) DECIMAL(precision, scale)
-- 3) MONEY(precision, scale)

-- 1> for whole numbers, no fractional part, precision
--    option to specify how many bits are used to 
--    represent the integer
-- 2> fixed precision numbers with a decimal point.
--    These are not real or floating point numbers.
--    More accurate than real types for quantities 
--    in a specific range of values. They're simply
--    integers that have been scaled to accurately 
--    represent quantities less than one. 
-- 3> for specialized cases of decimal types. 
--    Financial calculations are common usage

-- real types (real or float) sacrifice accuracy for
-- scale. capable of representing very large or small
-- numbers but only to a limited number of significant
-- digits

-- precision refers to the total number of digits in the
-- value (on both sides of the decimal point).
-- scale refers to the number of digits after the decimal 
-- point. 
