use AppleDB;

-- Report ALTER those years where the farm produced more than 100 tons of apples
select Year, sum(TonsProduced) as AnnualTonsProduced
from AppleProduction
group by Year
having AnnualTonsProduced > 100;

-- query you obtain the pairs <years , apple_variety> where the dollar per tree metric is higher than 3.0. 
select Year, AppleVariety, avg((TonsProduced * PricePerTon) / NumTrees) as DollarPerTon
from AppleProduction
group by Year, AppleVariety
having DollarPerTon > 3.0;

select AppleVariety, avg((TonsProduced * PricePerTon) / NumTrees) as DollarPerTon
from AppleProduction
group by AppleVariety
having DollarPerTon > 3.0;