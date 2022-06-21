-- Trigger is a statement that a system executes automatically
-- when there is any modification to the database. In a trigger,
-- we first specify when the trigger is to be executed and then 
-- the action to be performed when the trigger executes.


CREATE TABLE widgetCustomer ( id INTEGER PRIMARY KEY, name TEXT, last_order_id INT );
CREATE TABLE widgetSale ( id INTEGER PRIMARY KEY, item_id INT, customer_id INT, quan INT, price INT );

INSERT INTO widgetCustomer (name) VALUES ('Bob');
INSERT INTO widgetCustomer (name) VALUES ('Sally');
INSERT INTO widgetCustomer (name) VALUES ('Fred');

SELECT * FROM widgetCustomer;

-- see CREATE TRIGGER syntax on SQLite below:

CREATE TRIGGER newWidgetSale AFTER INSERT ON widgetSale
    BEGIN
        UPDATE widgetCustomer SET last_order_id = NEW.id WHERE widgetCustomer.id = NEW.customer_id;
    END
;

-- in this case, trigger name is newWidgetSale. AFTER INSERT ON
-- means if any rows inserted to the table called widgetSale,
-- execute this trigger. It executes the statement between
-- BEGIN and END. It basically updates last_order_id column
-- in the widgetCustomer table. You can see NEW and wonder
-- what is exactly that. Let me explain, you've inserted a
-- row and now you can refer to it by using this "NEW." syntax.
-- Additionally, the code above creates trigger in the
-- widgetSale table and you can see it in triggers item of
-- widgetSale table. 

-- So, when you insert new rows, widgetCustomer table will 
-- be updated accordingly:

INSERT INTO widgetSale (item_id, customer_id, quan, price) VALUES (1, 3, 5, 1995);
INSERT INTO widgetSale (item_id, customer_id, quan, price) VALUES (2, 2, 3, 1495);
INSERT INTO widgetSale (item_id, customer_id, quan, price) VALUES (3, 1, 1, 2995);

SELECT * FROM widgetSale;
SELECT * FROM widgetCustomer;

