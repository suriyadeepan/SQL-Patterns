use AppleDB;

show tables;
describe AppleSales;

-- how long the apples have been in the refrigerator room
select (timestamp(DeliveryDate) - StartingFreeze) as FreezeTime
from AppleSales;