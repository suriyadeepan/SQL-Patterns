use AppleDB;

show tables;
describe AppleSales;

-- how long the apples have been in the refrigerator room
-- TODO: This is probably wrong. Need to be fixed!
select StartingFreeze, DeliveryDate,
	(extract( day from timestamp(DeliveryDate)) - extract( day from StartingFreeze)) as FreezeTimeDays
from AppleSales;

-- extract the month and day from the starting_freeze time for the year 2018
select date(StartingFreeze) as StartingFreeze,
	extract(month from StartingFreeze) as Month,
	extract(day from StartingFreeze) as Day
from AppleSales
where year(StartingFreeze) = 2020;

-- Date string formatting
select date_format(StartingFreeze, "%Y-%m-%d") as StartingFreeze
from AppleSales;

select * from AppleSales;




