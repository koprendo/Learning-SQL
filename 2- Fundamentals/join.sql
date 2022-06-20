-- With JOIN clause, you can perform queries on related data
-- from multiple tables. Generally, ID columns are used to
-- create relationships. Common forms of JOIN;
-- a) INNER JOIN
-- b) LEFT OUTER JOIN and RIGHT OUTER JOIN
-- c) FULL OUTER JOIN

-- Suppose you have two table: left and right.
-- Both have two columns: id and description
-- Table left:
-- || id || description ||
-- || 1  || sol 01      ||
-- || 2  || sol 02      ||
-- || 3  || sol 03      ||
-- Table right:
-- || 3  || sag 03      ||
-- || 4  || sag 04      ||


-- The code below creates a joined query by joining 
-- two tables (left and right) where the id's match.

SELECT l.description AS left_desc, r.description AS right_desc
  FROM left AS l
  JOIN right AS r ON l.id = r.id;

-- in this query, left table is considered the left side
-- of the join and the right table is considered the right
-- side of the join. You'll get this:

-- || left_desc || right_desc ||
-- || sol 03    || sag 03   ||

-- This is a simple join (inner join). It gives only the 
-- results where the condition is met. To make this left outer join,
-- add 'LEFT' before 'JOIN':

SELECT l.description AS left_desc, r.description AS right_desc
  FROM left AS l
  LEFT JOIN right AS r ON l.id = r.id;

-- This will give you all of the left table plus the joined part:
-- || left_desc || right_desc ||
-- || sol 01    || NULL       ||
-- || sol 02    || NULL       ||
-- || sol 03    || sag 03     ||

-- You can join (or relate) multiple tables. Suppose you have 3 table:
-- customer, item, and sale tables. You have unique customers data on 
-- customer table and unique items data on item table. Sale table consists
-- of all sales data including customer id and item id. Keep in mind, there
-- can be a bunch of sales data belongs to a customer with different items
-- he/she purchased. Likewise, there can be a bunch of sales data for a certain
-- item that is bought by several customers. With the code below, you can view
-- details of sales based on sale table joined with customer and item tables.

SELECT c.name AS cust, c.zip, i.name AS Item, i.description, s.quantity AS Quan, s.price AS Price
  FROM sale AS s
  JOIN item AS i ON s.item_id = i.id
  JOIN customer AS c ON s.customer_id = c.id;
  
-- See sale table has item_id and customer_id columns. Thus, you can view sale
-- table as a junction table.
