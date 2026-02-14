-- Write an SQL statement to display all data on products having a QuantityOnHandgreater than 0

USE capp_codd;
SHOW TABLES;

select * from INVENTORY;

select QuantityOnHand
FROM INVENTORY
WHERE QuantityOnHand > 0;