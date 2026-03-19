# Delta Tables in Apache Spark (Microsoft Fabric)

This exercise demonstrates how to work with **Delta Lake tables using Apache Spark in Microsoft Fabric**.

The lab covers creating DataFrames, building managed and external Delta tables, querying with SQL, handling versioning, and working with streaming data.

---

## Architecture

CSV File (Upload)          
        ↓  
Spark DataFrame (Notebook)            
        ↓  
Delta Tables (Managed + External)            
        ↓  
SQL Queries + Versioning            
        ↓  
Streaming Data → Delta Sink              

---

## Dataset

Products dataset containing product details and pricing.

Source: `https://github.com/MicrosoftLearning/dp-data/raw/main/products.csv`

---

## Technologies Used

- Microsoft Fabric
- Fabric Lakehouse
- Apache Spark (PySpark)
- Delta Lake
- Spark SQL (%%sql)
- Structured Streaming

---

## Key Concepts Demonstrated

### DataFrames in Spark

- Reading CSV data into structured DataFrames
- Applying explicit schema definitions

---

### Delta Tables

- Creating **managed tables** (stored in Tables/)
- Creating **external tables** (stored in Files/)
- Understanding metadata vs physical storage

---

### Managed vs External Tables

- Managed → Fabric controls data + metadata
- External → Only metadata managed by Fabric

---

### SQL with Spark

- Using `%%sql` magic commands
- Creating tables and views
- Running aggregations and analytical queries

---

### Delta Table Versioning

- Transaction logs stored in `_delta_log`
- Viewing history with `DESCRIBE HISTORY`
- Querying previous versions of data

---

### Streaming with Delta Lake

- Using Delta tables as streaming sinks
- Simulating IoT data streams
- Real-time ingestion into tables

---

## Outcome

✔ Created Spark DataFrame from CSV  
✔ Built managed and external Delta tables  
✔ Compared storage behavior of tables  
✔ Queried data using Spark SQL  
✔ Implemented Delta table versioning  
✔ Built streaming pipeline into Delta table  
