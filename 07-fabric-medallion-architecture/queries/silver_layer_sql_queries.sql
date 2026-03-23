-- total sales for each year

SELECT YEAR(OrderDate) AS YEAR,
    CAST( SUM( Quantity * (UnitPrice + Tax)) AS DECIMAL(12, 2)) AS TotalSales
FROM sales_silver
GROUP BY YEAR(OrderDate)
ORDER BY YEAR(OrderDate)

-- customers purchasing the most (in terms of quantity)

SELECT TOP 10 CustomerName, SUM(Quantity) as TotalQuantity
FROM sales_silver
GROUP BY CustomerName
ORDER BY TotalQuantity DESC
