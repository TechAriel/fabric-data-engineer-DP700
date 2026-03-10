# Data Ingestion Pipeline with Spark Notebook (Microsoft Fabric)

This project demonstrates how to build a **data ingestion and transformation pipeline in Microsoft Fabric** using:

- Fabric Data Pipelines
- Copy Data activity
- Apache Spark Notebooks
- Lakehouse storage
- Delta tables

The pipeline ingests raw sales data from an external source, stores it in **OneLake**, and then executes a **Spark notebook transformation** before loading the processed dataset into a **Delta table in the Lakehouse**.

---

## Architecture

External Data Source (CSV)       
        ↓         
Fabric Pipeline – Copy Activity       
        ↓          
OneLake Storage (Files)       
        ↓            
Spark Notebook Transformation       
        ↓            
Delta Lake Table       
        ↓               
Analytics-ready Lakehouse Data

---

## Dataset Used
Sample `sales.csv` dataset


---

## Technologies Used

- Microsoft Fabric
- Fabric Lakehouse
- Data Pipelines
- Apache Spark
- PySpark
- Delta Lake
- OneLake storage

---

## Key Transformations

The Spark notebook performs several transformations:

- Extract **Year** and **Month** from OrderDate
- Split CustomerName into **FirstName** and **LastName**
- Reorder and filter relevant columns
- Load the transformed dataset into a **Delta table**

## Pipeline Workflow

1️⃣ Delete previous ingestion files
2️⃣ Copy new dataset from external source
3️⃣ Run Spark notebook transformation
4️⃣ Write results to a Lakehouse Delta table

## Outcome

✔ Automated ingestion pipeline
✔ Spark-based transformation workflow
✔ Data stored in a structured Delta table for analytics
✔ Reusable Fabric ETL architecture
