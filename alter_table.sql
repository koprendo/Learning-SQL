-- in order to change a table's schema (for example adding an extra column), 
-- use ALTER TABLE statement:
ALTER TABLE test ADD d TEXT; 
-- Now, there is a d column with no values (NULL) in it. 

-- it is possible to add constraints:
ALTER TABLE test ADD e TEXT DEFAULT 'panda';
-- Now, there is a e column with default value (panda) for all rows in the table.
