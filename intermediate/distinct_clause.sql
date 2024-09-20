use AppleDB;

-- Unique apple varieties
select distinct AppleVariety
from AppleProduction;

-- Discard records matching both columns unique pair <AppleVariety, NumTrees>
select distinct AppleVariety, NumTrees
from AppleProduction;

-- How many apple varieties?
select count(distinct AppleVariety)
from AppleProduction;
