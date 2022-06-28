-- A string literal is a sequence of zero or more characters 
-- enclosed by single quotes. For instance, the null string
-- ('') contains zero characters.

-- Use two single quotes in case of you need to use single 
-- quote in your string:

SELECT 'He''s going crazy!' AS Example;

-- Each platform can require specific string handling in SQL. 
-- As an example: string concatenation. 

SELECT 'How' || ' are' || ' you?' AS Example;

-- MySQL uses a function for string concatenation:
-- SELECT CONCAT('How', ' are', ' you?');
-- In MS SQL Server:
-- SELECT 'How' + ' are' + ' you?';
