SELECT * FROM customer

-- In order to add rows to a table, use INSERT INTO statement:
INSERT INTO customer (name, address, city, state, zip)
  VALUES ('Fred Flintstone', '123 Cobblestone Way', 'Bedrock', 'CA', '91234');
  
-- We can also insert a row only for some of the columns.
INSERT INTO customer (name, city, state)
  VALUES ('Jimi Hendrix', 'Renton', 'WA');
-- Now, we have null values (which means no data) in those columns that we were
-- not specified.   

-- We can add a row with no data in it by using DEFAULT VALUES keywords:
INSERT INTO test DEFAULT VALUES;

-- We can use the results of a SELECT statemnt to add rows to a table:
INSERT INTO test SELECT id, name, description FROM item;
-- We can also filter the results:
INSERT INTO test SELECT id, name, description FROM item WHERE id = 2;
