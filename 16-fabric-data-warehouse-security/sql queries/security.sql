-- Dynamic Data Masking


--  create customers table
CREATE TABLE dbo.Customers
(
    CustomerID INT NOT NULL,
    FirstName VARCHAR(50) MASKED WITH (FUNCTION = 'partial(1,"XXXXXXX",0)') NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Phone VARCHAR(20)  MASKED WITH (FUNCTION = 'default()') NULL,
    Email VARCHAR(50) MASKED WITH (FUNCTION = 'email()') NULL

);

-- insert data into customers table
INSERT INTO dbo.Customers (CustomerID, FirstName, LastName, Phone, Email) VALUES
(29485,'Catherine','Abel','555-555-5555','catherine0@adventure-works.com'),
(29486,'Kim','Abercrombie','444-444-4444','kim2@adventure-works.com'),
(29489,'Frances','Adams','333-333-3333','frances0@adventure-works.com');

-- view data in customers table
SELECT *
FROM dbo.Customers


-- Row-Level Security(RLS)

-- Create Sales Table
CREATE TABLE dbo.Sales  
(  
    OrderID INT,  
    SalesRep VARCHAR(60),  
    Product VARCHAR(10),  
    Quantity INT  
);

--Populate the table with 6 rows of data, showing 3 orders for each test user.
INSERT dbo.Sales (OrderID, SalesRep, Product, Quantity) VALUES
(1, 'ArielAnalytic@400.onmicrosoft.com', 'Valve', 5),   
(2, 'ArielAnalytic@400.onmicrosoft.com', 'Wheel', 2),   
(3, 'ArielAnalytic@400.onmicrosoft.com', 'Valve', 4),  
(4, 'GabrielOduor@xyz.onmicrosoft.com', 'Bracket', 2),   
(5, 'GabrielOduor@xyz.onmicrosoft.com', 'Wheel', 5),   
(6, 'GabrielOduor@xyz.onmicrosoft.com', 'Seat', 5); 



-- view data on sales table
SELECT *
FROM dbo.Sales;

--Create a separate schema to hold the row-level security objects (the predicate function and the security policy)
CREATE SCHEMA rls
GO

/*Create the security predicate defined as an inline table-valued function.
A predicate evaluates to true (1) or false (0). This security predicate returns 1,
meaning a row is accessible, when a row in the SalesRep column is the same as the user
executing the query.*/ 

-- Create a function to evaluate who is querying the table
CREATE FUNCTION rls.fn_securitypredicate(@SalesRep VARCHAR(60))
    RETURNS TABLE
    WITH SCHEMABINDING
AS
    RETURN SELECT 1 AS fn_securitypredicate_result
    WHERE @SalesRep = USER_NAME()
GO

/*Create a security policy to invoke and enforce the function each time a query is run on the Sales table.
The security policy has a filter predicate that silently filters the rows available to 
read operations (SELECT, UPDATE, and DELETE). */
CREATE SECURITY POLICY SalesFilter
ADD FILTER PREDICATE rls.fn_securitypredicate(SalesRep)
ON dbo.Sales 
WITH (STATE = ON)
GO

-- view data again on sales table
SELECT *
FROM dbo.Sales;


-- Column-Level Security (CLS)


-- create orders table
CREATE TABLE dbo.Orders
(   
    OrderID INT,   
    CustomerID INT,  
    CreditCard VARCHAR(20)      
);  

-- insert data into Orders table
INSERT dbo.Orders (OrderID, CustomerID, CreditCard) VALUES
(1234, 5678, '111111111111111'),
(2341, 6785, '222222222222222'),
(3412, 7856, '333333333333333');   

-- view data in orders table
SELECT * FROM dbo.Orders;

-- Deny permission to view CreditCard column in the table
DENY SELECT ON dbo.Orders(CreditCard) TO [ArielAnalytic@400.onmicrosoft.com]
GO

-- view data in orders table after DENY permission enforcement
SELECT * FROM dbo.Orders



-- SQL granular permissions using T-SQL (Object Level Security)


-- Create a stored procedure
CREATE PROCEDURE dbo.sp_PrintMessage
AS
PRINT 'Hello World!'
GO


--  create Parts table
CREATE TABLE dbo.Parts
(
    PartID INT,
    PartName VARCHAR(25)
);


-- insert data into Parts table
INSERT dbo.Parts (PartID, PartName) VALUES
(1234, 'Wheel'),
(5678, 'Seat');
 GO

/*Execute the stored procedure and select from the table and note the results you get
as a member of the Workspace Admin role. Look for output from the stored procedure on 
the 'Messages' tab.*/

-- execute stored procedure
EXEC dbo.sp_PrintMessage;
GO   

-- select from Parts table
SELECT * FROM dbo.Parts


-- DENY SELECT permissions on the Parts table to a user who is a member of the Workspace Viewer role
DENY SELECT ON dbo.Parts TO [ArielAnalytic@400.onmicrosoft.com]
GO

-- GRANT EXECUTE on the procedure to the same user
GRANT EXECUTE ON dbo.sp_PrintMessage TO [ArielAnalytic@400.onmicrosoft.com]
GO
