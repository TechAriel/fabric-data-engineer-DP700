# Microsoft Fabric Lakehouse Fundamentals

This exercise demonstrates the core concepts of a **Microsoft Fabric Lakehouse**, combining scalable file-based storage with relational querying using SQL.

The lab focuses on ingesting file-based data, converting it into a managed table, and querying it through the SQL analytics endpoint.

---

## Architecture

CSV File (Local Upload)            
        ↓  
OneLake Storage (Files)            
        ↓  
Delta Table (Lakehouse Tables)            
        ↓  
SQL Analytics Endpoint            
        ↓  
Query + Visual Analysis            

---

## Dataset

Sales dataset containing transactional order data.

Source: `https://raw.githubusercontent.com/MicrosoftLearning/dp-data/main/sales.csv`

---

## Technologies Used

- Microsoft Fabric
- Fabric Lakehouse
- OneLake (ADLS Gen2)
- Delta Lake
- SQL Analytics Endpoint
- Power Query (Visual Query)

---

## Key Concepts Demonstrated

### Lakehouse Architecture

- Files stored in OneLake
- Tables built on Delta Lake format
- Unified analytics layer

---

### Data Ingestion

- Manual file upload into lakehouse
- Folder organization within OneLake

---

### Table Creation

- Converting raw CSV into a **Delta table**
- Schema applied at table level

---

### SQL Querying

- Querying lakehouse tables using SQL
- Aggregating business metrics

---

### Visual Querying

- Power Query-based visual transformations
- No-code data aggregation

---

## Outcome

✔ Created a Fabric Lakehouse  
✔ Uploaded and organized raw data files  
✔ Converted CSV data into a Delta table  
✔ Queried data using SQL analytics endpoint  
✔ Built a visual query using Power Query  
