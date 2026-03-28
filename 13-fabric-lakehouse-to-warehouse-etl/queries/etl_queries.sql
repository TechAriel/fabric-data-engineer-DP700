-- Lakehouse abstraction in data warehouse
CREATE VIEW Sales.Staging_Sales
AS
SELECT *
FROM DataLoadHouse.dbo.staging_sales;

-- create stored procedure for to load data from lakehouse to warehouse
CREATE OR ALTER PROCEDURE Sales.LoadDataFromStaging(@OrderYear INT) 
-- Parameter Name and DataType to be called later
AS
BEGIN
-- load data into customer dimension table
INSERT INTO Sales.Dim_Customer (CustomerID, CustomerName, EmailAddress)
SELECT DISTINCT CustomerName, CustomerName, EmailAddress
FROM Sales.Staging_Sales
WHERE Year(OrderDate) = @OrderYear
AND NOT EXISTS(
    SELECT 1 
    --Placeholder
    FROM Sales.Dim_Customer
    WHERE Sales.Dim_Customer.CustomerName = Sales.Staging_Sales.CustomerName
    AND Sales.Dim_Customer.EmailAddress = Sales.Staging_Sales.EmailAddress
);

-- load data into Item dimension table
INSERT INTO Sales.Dim_Item (ItemID, ItemName)
SELECT DISTINCT Item, Item
FROM Sales.Staging_Sales
WHERE Year(OrderDate) = @OrderYear
AND NOT EXISTS(
    SELECT 1
    FROM Sales.Dim_Item
    WHERE Sales.Dim_Item.ItemName = Sales.Staging_Sales.Item
);

-- load data into Sales Fact table
INSERT INTO Sales.Fact_Sales(CustomerID, ItemID, SalesOrderNumber, SalesOrderLineNumber, OrderDate, Quantity, TaxAmount, UnitPrice)
SELECT CustomerName, Item, SalesOrderNumber, CAST(SalesOrderLineNumber AS INT), CAST(OrderDate AS DATE), CAST(Quantity AS INT), CAST(TaxAmount AS FLOAT), CAST(UnitPrice AS FLOAT)
FROM Sales.Staging_Sales
WHERE Year(OrderDate) = @OrderYear;

END

-- Executing stored function to load data into the warehouse
EXEC Sales.LoadDataFromStaging 2021
