-- Transactions group a set of tasks into a single execution unit.
-- Each transaction begins with a specific task and ends when all 
-- the tasks in the group successfully complete. If any of the tasks
-- fail (corresponding data in the other tables would be out of sync 
-- and invalid), the transaction fails. By combining all of these
-- actions into a single transaction, the state of the database
-- will be automatically rolled back to a valid state if any of the 
-- individual operations fail. Therefore, a transaction has  
-- only two results: success or failure.

-- Transactions are also used to ensure that concurrent 
-- operations result in a state as if they were separately
-- and sequentially. 
 
-- Incomplete steps result in the failure of the transaction. A
-- database transaction, by definition, must be atomic, consistent,
-- isolated and durable. These are popularly known as ACID properties.
-- For more information on ACID properties, check on this:
-- https://en.wikipedia.org/wiki/ACID

CREATE TABLE widgetInventory (
  id INTEGER PRIMARY KEY,
  description TEXT,
  onhand INTEGER NOT NULL
);

CREATE TABLE widgetSales (
  id INTEGER PRIMARY KEY,
  inv_id INTEGER,
  quan INTEGER,
  price INTEGER
);

INSERT INTO widgetInventory ( description, onhand ) VALUES ( 'rock', 25 );
INSERT INTO widgetInventory ( description, onhand ) VALUES ( 'paper', 25 );
INSERT INTO widgetInventory ( description, onhand ) VALUES ( 'scissors', 25 );

SELECT * FROM widgetInventory;
SELECT * FROM widgetSales;

BEGIN TRANSACTION;
INSERT INTO widgetSales ( inv_id, quan, price ) VALUES ( 1, 5, 500 );
UPDATE widgetInventory SET onhand = ( onhand - 5 ) WHERE id = 1;
END TRANSACTION;

-- This is the syntax of a transaction. All of the SQL statements
-- in between BEGIN TRANSACTION and END TRANSACTION will be performed
-- as one unit. 

-- In the process of doing a transaction, and you realize that your
-- transaction needs to be aborted, use ROLLBACK statement:

BEGIN TRANSACTION;
INSERT INTO widgetInventory ( description, onhand ) VALUES ( 'toy', 25 );
ROLLBACK;

