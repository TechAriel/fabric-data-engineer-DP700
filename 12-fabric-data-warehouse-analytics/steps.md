# Technical Breakdown

## Step 1 – Create Workspace

Fabric workspace created with capacity enabled.

---

## Step 2 – Create Data Warehouse

Warehouse created with:

- Full SQL support
- Relational engine

![Data Whouse](screenshots/warehouse-created.png)

---

## Step 3 – Create Table (DimProduct)

Table: `DimProduct`

Columns:

- ProductKey
- ProductAltKey
- ProductName
- Category
- ListPrice

![Sample DimProduct table](screenshots/dimproduct-table.png)

---

## Step 4 – Insert Data

Inserted sample product records using: `INSERT INTO` statement

![Data Inserted into DimProduct](screenshots/data-inserted.png)

---

## Step 5 – Load Full Schema

Executed SQL script to create:

- DimCustomer
- DimDate
- DimProduct
- FactSalesOrder

![Warehouse Schema](screenshots/full-schema.png)

---

## Step 6 – Query Fact + Dimension Tables

Query: - Joined FactSalesOrder with DimDate

Result: - Sales aggregated by Year and Month

![Sales by Year Query](screenshots/sales-query.png)

---

## Step 7 – Multi-Dimensional Query

Extended query: - Joined DimCustomer

Result: - Sales by Year, Month, Region

![Sales by Year and Region Query](screenshots/sales-region-query.png)

---

## Step 8 – Create View

View: `vSalesByRegion`

Purpose:

- Encapsulate aggregation logic
- Reuse query logic

![View sample](screenshots/view-created.png)

---

## Step 9 – Query View

Used: SELECT FROM vSalesByRegion

![Query on View](screenshots/view-query.png)

---

## Step 10 – Visual Query

Used drag-and-drop interface:

- Joined FactSalesOrder + DimProduct
- Expanded ProductName
- Applied filter (Cable Lock)

![Visual Query](screenshots/visual-query-wh.png)

---

## Step 11 – Semantic Model

Created relationships:

- Fact → Product
- Fact → Customer
- Fact → Date

Schema: - Star schema design

![Star Schema](screenshots/semantic-model-wh.png)

---

## Step 12 – Clean Up

Workspace deleted after completion.
