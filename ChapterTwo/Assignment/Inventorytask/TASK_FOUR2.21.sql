-- Write an SQL statement to display all of the columns without using the SQL asterisk(*) wildcard character.
USE capp_codd;
SHOW COLUMNS FROM INVENTORY;

SELECT WarehouseID, SKU, SKU_Description, QuantityOnHand, QuantityOnOrder 
from INVENTORY;