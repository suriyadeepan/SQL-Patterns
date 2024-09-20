create database AppleDB;
use AppleDB;

-- Create table given the schema [Year, Apple Variety, Number of Trees in Production, Tons Produced, Harvest day, Price Per Ton, First Summer Storm]
create table AppleProduction (
	Year INT,
    AppleVariety varchar(255),
    NumTrees INT,
    TonsProduced decimal(10, 2),
    HarvestDay date,
    PricePerTon decimal(10, 2),
    FirstSummerStorm date
);

describe table AppleProduction;
describe AppleProduction;

-- Insert one row
insert into AppleProduction (Year, AppleVariety, NumTrees, TonsProduced, HarvestDay, PricePerTon, FirstSummerStorm)	
values (2020, "Red Delicious", 2000, 102, "2020-06-23", 54.50, "2020-03-07");

select * from AppleProduction;

-- Insert multiple rows
insert into AppleProduction (Year, AppleVariety, NumTrees, TonsProduced, HarvestDay, PricePerTon, FirstSummerStorm)	
values
(2021, "Blue Shit", 200, 10, "2021-03-26", 54.50, "2021-07-03"),
(2021, "Yellow Crap", 210, 11, "2022-05-27", 94.50, "2022-08-04");

select * from AppleProduction;

-- Disable safe mode for row deletion
SET SQL_SAFE_UPDATES = 0;

-- conditional delete rows
delete from AppleProduction
where NumTrees <= 200;

-- delete all rows
delete from AppleProduction;

-- Insert all rows for tutorial
INSERT INTO AppleProduction (Year, AppleVariety, NumTrees, TonsProduced, HarvestDay, PricePerTon, FirstSummerStorm)
VALUES
(2020, 'Red Delicious', 2000, 102.00, '2020-06-23', 54.50, '2020-07-03'),
(2020, 'Magic Green', 700, 33.00, '2020-06-12', 62.60, '2020-07-03'),
(2020, 'Red Globus', 500, 26.00, '2020-05-30', 71.50, '2020-07-03'),
(2019, 'Red Delicious', 1800, 87.00, '2019-07-15', 52.25, '2019-07-12'),
(2019, 'Magic Green', 500, 26.00, '2019-06-28', 59.40, '2019-07-12'),
(2019, 'Red Globus', 500, 27.00, '2019-05-28', 68.00, '2019-07-12'),
(2018, 'Red Delicious', 1800, 92.00, '2018-07-02', 56.75, '2018-06-03'),
(2018, 'Red Globus', 500, 24.00, '2018-05-30', 66.00, '2018-06-03'),
(2017, 'Red Delicious', 1500, 76.50, '2017-07-18', 51.45, '2017-07-30'),
(2016, 'Red Delicious', 1500, 72.00, '2016-06-26', 47.60, '2016-06-23');



