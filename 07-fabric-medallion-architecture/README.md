# Medallion Architecture in Microsoft Fabric

This exercise demonstrates how to implement a **Medallion Architecture (Bronze, Silver, Gold)** in a Microsoft Fabric Lakehouse using notebooks and Delta Lake.

The lab walks through ingesting raw data, transforming it into clean structured data, and modeling it into a star schema for analytics.

---

## Architecture

Raw CSV Files (Bronze Layer)          
        ↓  
Data Cleaning + Validation (Silver Layer - Delta Table)          
        ↓  
Dimensional Modeling (Gold Layer - Star Schema)          
        ↓  
SQL Analytics + Reporting            

---

## Dataset

Sales order data across multiple years.

Source: `https://github.com/MicrosoftLearning/dp-data/blob/main/orders.zip`

Files:

- 2019.csv  
- 2020.csv  
- 2021.csv  

---

## Technologies Used

- Microsoft Fabric
- Fabric Lakehouse
- Apache Spark (PySpark)
- Delta Lake
- Spark SQL
- SQL Analytics Endpoint
- Data Modeling (Star Schema)

---

## Key Concepts Demonstrated

### Medallion Architecture

- **Bronze** → Raw ingested data  
- **Silver** → Cleaned, validated, enriched data  
- **Gold** → Business-ready dimensional model  

---

### Data Engineering with Spark

- DataFrame transformations
- Schema enforcement
- Data cleansing and enrichment

---

### Delta Lake Operations

- Table creation using Delta format
- MERGE (upsert) operations
- Incremental data loading

---

### Dimensional Modeling

- Fact table (factSales)
- Dimension tables (Date, Customer, Product)
- Surrogate keys

---

### SQL Analytics

- Aggregations using SQL endpoint
- Business-level insights from curated data

---

## Outcome

✔ Built Bronze, Silver, and Gold layers  
✔ Implemented incremental upsert using Delta MERGE  
✔ Created dimension and fact tables  
✔ Modeled a star schema  
✔ Queried business insights using SQL  
✔ Prepared data for BI reporting  
