create database AppleDB;
use AppleDB;

-- list tables
show tables;

-- describe table
describe AppleProduction;

-- Obtain the total production of apples every year
select Year, sum(TonsProduced) as AnnualProductionInTons
from AppleProduction
group by Year
order by Year desc;

-- The average price per ton of apples for each year
--  includes records where the first summer storm occurred in July
select Year, avg(PricePerTon)
from AppleProduction
where month(FirstSummerStorm) = 7
group by Year;

-- Get average, min, max dollar_per_tree = ( tons_produced * price_per_ton ) / number_of_trees
select AppleVariety, 
	avg(TonsProduced * PricePerTon / NumTrees) as AverageDollarPerTree,
    min(TonsProduced * PricePerTon / NumTrees) as MinDollarPerTree,
    max(TonsProduced * PricePerTon / NumTrees) as MaxDollarPerTree
from AppleProduction
group by AppleVariety;

select Year, AppleVariety, 
	avg(TonsProduced * PricePerTon / NumTrees) as AverageDollarPerTree,
    min(TonsProduced * PricePerTon / NumTrees) as MinDollarPerTree,
    max(TonsProduced * PricePerTon / NumTrees) as MaxDollarPerTree
from AppleProduction
group by Year, AppleVariety;