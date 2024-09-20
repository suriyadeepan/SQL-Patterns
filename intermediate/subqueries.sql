use AppleDB;

--  Obtain the year and the tons_produced for Red Delicious variety 
--   and the year that price of Red Delicious touches its maximum value in the history
select Year, TonsProduced
from AppleProduction
where AppleVariety = "Red Delicious" and
PricePerTon = (select max(PricePerTon)
		from AppleProduction
        where AppleVariety = "Red Delicious");

-- Obtain the year, tons produced, number of trees and the metric tons_per_tree
--  for those years when the tons_per_tree was less than the average for Red Delicious
select Year, TonsProduced, NumTrees, AppleVariety, (TonsProduced / NumTrees) as TonsPerTree
from AppleProduction
where (TonsProduced / NumTrees) < (select avg(TonsProduced / NumTrees)
								from AppleProduction
                                where AppleVariety = "Red Delicious");
                                
-- Obtain the year, number of trees, and tons produced
--  for each year where the apple variety is 'Red Delicious', 
--  and calculates the tons produced per tree, 
--  but only includes years where the average tons produced per tree for 'Red Delicious' is greater than 0.05.
select Year, NumTrees, TonsProduced, (TonsProduced/NumTrees) as TonsPerTree
from AppleProduction
where Year in (select Year 
			from AppleProduction
			where AppleVariety = "Red Delicious"
            group by Year
            having (TonsProduced / NumTrees) > 0.05) and
	AppleVariety = "Red Delicious";

-- obtain the years where you did not produce the Red Globus variety.
-- **Correlated Subquery**
select Year
from AppleProduction as A1
where not exists (select *
		from AppleProduction as A2
        where A1.year = A2.Year and 
			AppleVariety = "Red Globus");

 -- Obtain the year, tons produced, and price per ton for 'Red Delicious' apples, and
 -- calculates the revenue by multiplying tons produced by price per ton.
select Year, TonsProduced, PricePerTon, (TonsProduced * PricePerTon) as Revenue
from AppleProduction
where AppleVariety = "Red Delicious";

-- **Create a Temporary table to solve it**
select Year, TonsProduced, PricePerTon, Revenue
from (select Year, TonsProduced, PricePerTon, (TonsProduced * PricePerTon) as Revenue
	from AppleProduction
	where AppleVariety = "Red Delicious") RedDelAppleProduction;


					



