-- Write an SQL statement to display the SKU and SKU_Description for products hav-ing QuantityOnHand equal to 0.

USE capp_codd;

select SKU, SKU_Description
from INVENTORY
WHERE QuantityOnHand = 0;