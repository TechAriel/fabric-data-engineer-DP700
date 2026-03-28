# Technical Breakdown

## Step 1 – Create Workspace

Fabric workspace created with capacity enabled.

---

## Step 2 – Create Lakehouse

Lakehouse created for staging raw data.

---

## Step 3 – Upload CSV File

File: [sales.csv](https://github.com/MicrosoftLearning/dp-data/raw/main/sales.csv)

Uploaded to: Files section of lakehouse

![Lakehouse + CSV File](screenshots/file-uploaded.png)

---

## Step 4 – Create Staging Table

Table: `staging_sales`

Method:

- Loaded from CSV
- Header enabled

![Lakehouse Staging Table](screenshots/staging-table.png)

---

## Step 5 – Create Data Warehouse

Warehouse created with full SQL capabilities.

---

## Step 6 – Create Schema and Tables

Schema: `Sales`

Tables:

- Fact_Sales
- Dim_Customer
- Dim_Item

![Warehouse + Tables](screenshots/schema-tables.png)

---

## Step 7 – Create Staging View

View: `Sales.Staging_Sales`

Purpose:

- Access lakehouse data from warehouse
- Simplify ETL logic

![Warehouse Staging View](screenshots/staging-view.png)

---

## Step 8 – Create Stored Procedure

Procedure: `Sales.LoadDataFromStaging`

Logic:

- Load customers (deduplicated)
- Load items (deduplicated)
- Load fact sales

![Procedure for loading data](screenshots/stored-procedure.png)

---

## Step 9 – Execute ETL Process

Command: `EXEC Sales.LoadDataFromStaging 2021`

Result: - Data loaded into warehouse tables

![Fact Sales Data Loaded](screenshots/etl-executed.png)

---

## Step 10 – Analytical Query (Customers)

- Total sales per customer
- Sorted descending

![Customer Query Analysis](screenshots/customer-analysis.png)

---

## Step 11 – Analytical Query (Products)

- Total sales per item
- Identifies top-selling products

![Product Query Analysis](screenshots/product-analysis.png)

---

## Step 12 – Advanced Query (Categorisation)

- Categorized items (Bike, Helmet, Gloves)
- Ranked customers per category
- Used ROW_NUMBER()

![Categorisation Query](screenshots/advanced-query.png)

---

## Step 13 – Clean Up

Workspace deleted after completion.
