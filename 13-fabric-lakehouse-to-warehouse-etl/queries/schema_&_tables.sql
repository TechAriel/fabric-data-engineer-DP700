-- Create Schema
CREATE SCHEMA [Sales]
GO

-- Create Sales Fact Table
IF OBJECT_ID('Sales.Fact_Sales', 'U') IS NULL -- U -table create by User/S-system/V-View
    CREATE TABLE Sales.Fact_Sales (
        CustomerID VARCHAR(255) NOT NULL,
        ItemID VARCHAR(255) NOT NULL,
        SalesOrderNumber VARCHAR(30),
        SalesOrderLineNumber INT,
        OrderDate DATE,
        Quantity INT,
        TaxAmount FLOAT,
        UnitPrice FLOAT
    );

-- Create Dim_Customer Table
IF OBJECT_ID('Sales.Dim_Customer', 'U') IS NULL
    CREATE TABLE Sales.Dim_Customer(
        CustomerID VARCHAR(255) NOT NULL,
        CustomerName VARCHAR(255) NOT NULL,
        EmailAddress VARCHAR(255) NOT NULL
    );

-- add contraint "PK-Dim_Customer" on CustomerID
ALTER TABLE Sales.Dim_Customer 
ADD CONSTRAINT PK_Dim_Customer 
PRIMARY KEY NONCLUSTERED (CustomerID) NOT ENFORCED
GO

-- create Dim_Item table
IF OBJECT_ID('Sales.Dim_Item', 'U') IS NULL
    CREATE TABLE Sales.Dim_Item(
        ItemID VARCHAR(255) NOT NULL,
        ItemName VARCHAR(255) NOT NULL
    );

-- add contraint "PK-Dim_Customer" on CustomerID
ALTER TABLE Sales.Dim_Item 
ADD CONSTRAINT PK_Dim_Item
PRIMARY KEY NONCLUSTERED (ItemID) NOT ENFORCED
GO
