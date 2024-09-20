use CustomerDB;
show tables;

-- select all
select * from Customers;

-- select email
select Email from Customers;

-- select multiple
select CustomerName, LastOrderDate from Customers;

-- filter with where
-- last_order_date < ‘10/01/2019’
select * from Customers
where LastOrderDate < "2019-10-01";



-- Create a report with all the articles sold in the SouthEast region during the first quarter of 2020
-- In the report, you need the attributes: article_code, branch, seller_id and the quantity sold
describe Sales;
select ArticleCode, Branch, SellerID, Quantity
from Sales
where Region = "SouthEast" and month(SaleDate) <= 4 and year(SaleDate) = 2020;

-- create a report with all the sales of the article Mustang sold by seller Sexton during 2019
select *
from Sales
where lower(ArticleCode) = "mustang" and
	SellerID = "Sexton" and
    year(SaleDate) = 2020;











