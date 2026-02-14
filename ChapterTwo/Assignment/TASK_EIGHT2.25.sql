-- Write an SQL statement to display the SKU, SKU_Description, and WarehouseID forproducts that have a QuantityOnHand greater than 0. Sort the results in descendingorder by WarehouseID and in ascending order by SKU.

USE capp_codd;

select SKU, SKU_Description, WarehouseID
from INVENTORY
WHERE QuantityOnHand = 0
order by WarehouseID desc,  SKU asc;