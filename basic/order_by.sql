use CustomerDB;

-- obtain a report with the attributes customer_name, email_address, and last_order_date ordered by customer_name
select CustomerName, Email, LastOrderDate
from Customers
order by CustomerName;

-- same report ordered by the last_order_date attribute
select CustomerName, Email, LastOrderDate
from Customers
order by LastOrderDate desc;

-- limit to 2
select * from Customers
limit 2;

-- Obtain all the attributes of the customer who placed the most recent order
select * 
from Customers
order by LastOrderDate desc
limit 1;

-- a report with the customers who placed the 5 most recent orders during the second quarter
-- If two or more customers placed an order on the same day, the report must be ordered by customer name.
select * 
from Customers
where month(LastOrderDate) >= 4 and month(LastOrderDate) < 7
order by LastOrderDate desc, CustomerName asc
limit 5;










