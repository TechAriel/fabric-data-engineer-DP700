# Technical Breakdown

## Step 1 – Create Workspace

A Fabric workspace with capacity was created.

Purpose: Provides environment for Spark and lakehouse operations.

---

## Step 2 – Create Lakehouse

A new lakehouse was created.

Configuration: - Lakehouse schemas disabled

---

## Step 3 – Upload Dataset

Dataset: [products.csv](https://github.com/MicrosoftLearning/dp-data/raw/main/products.csv)

Steps:

- Created folder: Files/products
- Uploaded CSV file

Purpose: Raw data ingestion into OneLake.

---

## Step 4 – Create Notebook

A new Fabric notebook was created and renamed.

Markdown cell added: `Delta Lake tables overview`

---

## Step 5 – Load Data into DataFrame

PySpark used to define schema and load CSV:

- StructType schema defined
- Data loaded into DataFrame

Purpose: Structured data processing using Spark.

---

## Step 6 – Create Managed Delta Table

Code used: `df.write.format("delta").saveAsTable("managed_products")`

Result:

- Table stored in Tables/
- Fabric manages storage + metadata

---

## Step 7 – Create External Delta Table

Code used with ABFS path: `df.write.format("delta").saveAsTable("external_products", path="...")`

Result:

- Data stored in Files/
- Metadata stored in lakehouse

---

## Step 8 – Compare Table Types

SQL used:
```
DESCRIBE FORMATTED managed_products  
DESCRIBE FORMATTED external_products  
```
Insight:

- Managed → Tables/ path  
- External → Files/ path  

---

## Step 9 – Drop Tables

SQL used:
```
DROP TABLE managed_products  
DROP TABLE external_products  
```
Observation: - External table data remains in storage

---

## Step 10 – Create Table Using SQL

SQL used:
```
CREATE TABLE products  
USING DELTA  
LOCATION 'Files/external_products';
```
---

## Step 11 – Query Data

SQL used: `SELECT * FROM products;`

---

## Step 12 – Update Data (Versioning)

SQL used:
```
UPDATE products  
SET ListPrice = ListPrice * 0.9  
WHERE Category = 'Mountain Bikes';
```
---

## Step 13 – View History

SQL used: `DESCRIBE HISTORY products;`

Purpose: Track changes via Delta transaction log.

---

## Step 14 – Time Travel Query

PySpark used:

- Current version read
- Version 0 read using versionAsOf

Purpose: Demonstrates Delta Lake time travel.

---

## Step 15 – Create Aggregated View

SQL used:
```
CREATE TEMP VIEW products_view  
GROUP BY Category  
```
Metrics:

- Count
- Min price
- Max price
- Avg price

---

## Step 16 – Analytical Queries

Top categories query:
```
ORDER BY NumProducts DESC  
LIMIT 10  
```
---

## Step 17 – PySpark SQL Query

Spark SQL executed via DataFrame API.

Purpose: Combine SQL + PySpark workflows.

---

## Step 18 – Streaming Data Setup

Simulated IoT stream:

- JSON schema defined
- Folder-based streaming source created

---

## Step 19 – Write Stream to Delta

Streaming write:

- Delta sink created in Tables/
- Checkpointing enabled

---

## Step 20 – Query Streaming Table

SQL used: `SELECT * FROM IotDeviceData;`

---

## Step 21 – Append Streaming Data

Additional data written to source folder.

Result: - Table updated in near real-time

---

## Step 22 – Stop Stream

Streaming job stopped programmatically.

---

## Step 23 – Clean Up

Workspace deleted after completion.
