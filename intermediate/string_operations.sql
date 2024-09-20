use AppleDB;
show tables;

-- Sale records of all varieties starting with "Red"
select *
from AppleSales
where Variety like "Red%";

-- Single column report in the following format: "SMart ordered 60 of Red Delicious to be delivered on 2020-02-28"
select concat(CustomerName, " ordered ", TonsSold, " tons of ", Variety, " to be delivered on ", DateOfSell) as Report
from AppleSales;

-- Use trim and lower functions to identify sleas of Red Delicious
select *
from AppleSales
where trim(lower(Variety)) = "red delicious";

-- Replace
select distinct Variety, replace(Variety, " ", "_") as WithUnderscore
from AppleSales;

-- Substring
select distinct Variety, substring(Variety, 2, 6) as SubString
from AppleSales;

-- Position
select distinct Variety, position(" " in Variety) as Position
from AppleSales;
