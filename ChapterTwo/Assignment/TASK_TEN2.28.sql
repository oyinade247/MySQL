-- Write an SQL statement to display SKU, SKU_Description, and WarehouseID forall products that have a QuantityOnHand equal to 0 or a QuantityOnOrder equalto 0. Sort the results in descending order by WarehouseID and in ascending orderby SKU.

USE capp_codd;

select SKU, SKU_Description, WarehouseID
from INVENTORY
WHERE QuantityOnHand = 0
 OR QuantityOnOrder > 0
order by WarehouseID desc,  SKU asc;