create database CustomerDB;
use CustomerDB;

create table Customers (
	CustomerID INT not null,
    CustomerName varchar(255),
    Email varchar(255),
    LastOrderDate date
);

insert into Customers values
(100, "John Doe", "john.doe@gmail.com", "2020-09-28"),
(101, "Mary Stanton", "mary.st@gmail.com", "2020-09-28"),
(102, "Dipali Gupta", "dipali.g@gmail.com", "2020-10-10");

insert into Customers values
(103, "Peter Can", "pcan@canmarkets.com", "2020-05-10");

CREATE TABLE Sales (
    ArticleCode VARCHAR(255),
    Branch VARCHAR(255),
    Region VARCHAR(255),
    SaleDate DATE,
    ArticleFamily VARCHAR(255),
    SellerID VARCHAR(255),
    Quantity INT
);

INSERT INTO Sales (ArticleCode, Branch, Region, SaleDate, ArticleFamily, SellerID, Quantity)
VALUES
('Harley 982', 'New Orleans', 'SouthEast', '2020-02-06', 'motorcycles', 'Moine', 2),
('Mustang', 'Miami', 'SouthEast', '2020-02-03', 'cars', 'Sexton', 1),
('Honda N400', 'New York', 'East', '2020-04-24', 'motorcycles', 'Gupta', 1),
('Harley 982', 'Los Angeles', 'West', '2020-05-05', 'motorcycles', 'Dann', 1),
('Kenworth T680', 'San Francisco', 'West', '2020-05-29', 'trucks', 'Garcia', 3),
('Mustang', 'Miami', 'SouthEast', '2020-06-16', 'cars', 'Sexton', 1),
('Harley 982', 'New York', 'East', '2020-10-12', 'motorcycles', 'Gupta', 1);
