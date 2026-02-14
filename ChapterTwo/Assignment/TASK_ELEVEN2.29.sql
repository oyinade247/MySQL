-- Write an SQL statement to display the SKU, SKU_Description, WarehouseID, andQuantityOnHand for all products having a QuantityOnHand greater than 1 and lessthan 10. Do not use the BETWEEN keyword.

USE capp_codd;

select SKU, SKU_Description, WarehouseID
from INVENTORY
WHERE QuantityOnHand > 1
AND QuantityOnOrder < 10;