use AppleDB;

-- calculate the total tons that the farm produced throughout its history
select sum(TonsProduced) as TotalTonsProduced
from AppleProduction;

-- how many years the Red Globus variety has been in production:
select count(*) as YearCountRedGlobus
from AppleProduction
where AppleVariety = "Red Globus";

-- calculation of the total revenue of every year
select Year, 
	sum(PricePerTon * TonsProduced) as AnnualRevenue,
    sum(TonsProduced) as AnnualTonsProduced
from AppleProduction
group by Year;

select sum(PricePerTon * TonsProduced) as TotalRevenue,
	sum(TonsProduced) as TotalTonsProduced
from AppleProduction;

-- Obtain the average price_per_ton for each apple variety in the last 10 years, plus the maximum and minimum price values
select AppleVariety,
	avg(PricePerTon) as AveragePricePerTon,
    min(PricePerTon) as MinPricePerTon,
    max(PricePerTon) as MaxPricePerTon
from AppleProduction
group by AppleVariety;

-- How many years the harvest was started before the first storm
describe AppleProduction;
select count(distinct Year) as YearHarvestBeforeStorm
from AppleProduction
where HarvestDay < FirstSummerStorm;











