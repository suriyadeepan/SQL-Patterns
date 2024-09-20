use FruitDB;
show tables;

select * from AppleProduction;

# equality check
select AppleVariety, TonsProduced
from AppleProduction
where Year = 2019;

# Range 2017 to 2019
select AppleVariety, TonsProduced, NumTrees
from AppleProduction
where Year >= 2017 and Year <= 2019;

# obtain the years where harvest started before the first summer storm
select AppleVariety, TonsProduced, NumTrees
from AppleProduction
where HarvestDay > FirstSummerStorm;

# obtain all history production, excluding the apple variety Red Delicious
select AppleVariety, TonsProduced, NumTrees
from AppleProduction
where AppleVariety != "Red Delicious";

# obtain those years where production was more than 50 kilograms of apples per tree
select Year, AppleVariety, TonsProduced, (1000 * TonsProduced / NumTrees) as KgProducedPerTree
from AppleProduction
where (1000 * TonsProduced / NumTrees) > 50;

# obtain the years harvest started in June
select * from AppleProduction
where month(HarvestDay) = 6; -- june