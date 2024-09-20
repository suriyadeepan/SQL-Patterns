use FruitDB;
show tables;

-- obtain the years where you harvest more than 90 Tons of Red Delicious variety, you have two conditions: 
-- Tons_produced > 90 and variety = 'Red Delicious'
select Year, AppleVariety, TonsProduced
from AppleProduction
where AppleVariety = "Red Delicious" and
	TonsProduced > 90;
    
--  suppose for an Red Delicious grower a good year is one where either more than 50 kilos per tree are harvested
-- or 
--  where the price per ton is greater than $54.
select Year, 
	1000 * TonsProduced / NumTrees as KgProducedPerTree,
    PricePerTon
from AppleProduction
where (1000 * TonsProduced / NumTrees) > 50
	or
	  PricePerTon > 54;
      
-- convert the good year query to obtain the bad years for a Red Delicious growers
select Year, 
	AppleVariety, NumTrees,
	1000 * TonsProduced / NumTrees as KgProducedPerTree,
    PricePerTon
from AppleProduction
where (not (
	(1000 * TonsProduced / NumTrees) > 50
	or
	PricePerTon > 54)) and AppleVariety = "Red Delicious";
    
-- obtain all records containing the word Red in the variety name
select * from AppleProduction
where lower(AppleVariety) like "%red%";

-- between price range 50 - 60
select * from AppleProduction
where PricePerTon between 50 and 60;

-- obtain the records in which the harvest day was in the 30 days period before the first_summer_storm
select * from AppleProduction
where HarvestDay between FirstSummerStorm-30 and FirstSummerStorm;

-- is null
select * from AppleProduction
where FirstSummerStorm is null;

-- is not null
select * from AppleProduction
where FirstSummerStorm is not null;