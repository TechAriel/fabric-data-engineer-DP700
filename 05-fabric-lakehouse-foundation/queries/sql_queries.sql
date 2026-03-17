-- Query to inspect table schema structure
SELECT TOP 10 *
FROM dbo.sales;

-- total revenue for each product
SELECT Item, SUM(Quantity * UnitPrice) AS Revenue
FROM sales
GROUP BY Item
ORDER BY Revenue DESC;

-- Item and order quantity by Customer
SELECT  CustomerName, Item, SUM(Quantity) AS Total_Quantity
FROM sales 
GROUP BY Item, CustomerName
ORDER BY Total_Quantity

-- Distinct years present
SELECT DISTINCT YEAR(OrderDate) as Yr
FROM sales

--Net Revenue per Year
SELECT YEAR(OrderDate) AS Yr, SUM(Quantity * UnitPrice) - SUM(TaxAmount) as Net_Profit
FROM sales
GROUP BY YEAR(OrderDate)
ORDER BY Yr
