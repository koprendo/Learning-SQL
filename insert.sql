SELECT * FROM customer

-- In order to add rows to a table, use INSERT INTO statement:
INSERT INTO customer (name, address, city, state, zip)
  VALUES ('Fred Flintstone', '123 Cobblestone Way', 'Bedrock', 'CA', '91234');
  
-- We can also insert a row only for some of the columns.
INSERT INTO customer (name, city, state)
  VALUES ('Jimi Hendrix', 'Renton', 'WA');
-- Now, we have null values (which means no data) in those columns that we were
-- not specified.   
