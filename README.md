# Microsoft Fabric Data Engineer (DP-700) – Hands-On Projects

This repository documents my hands-on labs and engineering exercises/projects while preparing for the **Microsoft Fabric Data Engineer Associate (DP-700)** certification.

The focus of these exercises is on building **modern analytics and data engineering workflows using Microsoft Fabric**, including:

- Lakehouse architecture
- Data ingestion pipelines
- Dataflows (Gen2)
- Real-time and batch data processing
- Data orchestration
- Analytics-ready data platforms

Each exercise demonstrates practical implementation of Fabric components used in real-world data engineering solutions.

---

## Exercises

- **01 – Fabric Dataflows (Gen2) Lakehouse Ingestion**

  Created a Dataflow (Gen2) ETL process and orchestrated it using a pipeline to load data into a Fabric Lakehouse.

- **02 – Fabric Pipeline + Spark Notebook ETL**
  
  Implemented a data ingestion pipeline that copies external data into OneLake and processes it using an Apache Spark notebook before loading it into   a Lakehouse Delta table.

- **03 – Spark DataFrame Analysis in Fabric:**
  
  Used PySpark notebooks to ingest, transform, and analyze lakehouse data with DataFrames, Delta tables, and visualisations.

- **04 – Fabric Eventhouse & KQL Analytics:**

  Queried real-time event data using Kusto Query Language (KQL) and T-SQL in a Microsoft Fabric Eventhouse.

- **05 – Fabric Lakehouse Fundamentals:**

  Built a lakehouse, ingested CSV data, converted it to Delta tables, and queried using SQL and Power Query.

- **06 – Delta Tables in Spark:**

  Created managed and external Delta tables, implemented versioning, ran SQL queries, and built a streaming data pipeline using Spark.

- **07 – Medallion Architecture:**

  Built a full Bronze-Silver-Gold data pipeline with Delta Lake, implemented upserts, and modeled a star schema for analytics.

- **08 – Real-Time Intelligence:**

  Built a real-time pipeline with Eventstream, Eventhouse, KQL queries, dashboards, and alerts using Activator.

- **09 – Eventstream Transformation:**

  Ingested real-time bicycle data, applied windowed aggregations, and analyzed both raw and transformed streams using KQL.

- **10 – Real-Time Dashboards (Advanced):**

  Built interactive dashboards with base queries, parameters, maps, and auto-refresh using real-time streaming data.

- **11 – Real-Time Alerting with Activator:**

  Built event-driven alerting system with rules, filters, and automated actions on streaming data.

- **12 – Data Warehouse Analytics:**

  Built a relational warehouse using T-SQL, created fact/dimension tables, views, and performed multi-dimensional analysis.

- **13 – Lakehouse to Warehouse ETL:**

  Built an end-to-end ETL pipeline using T-SQL to load data from a lakehouse into a warehouse with fact/dimension modeling.

- **14 – Data Warehouse Query & Validation:**

  Performed SQL analytics, data quality checks, cleansing, and created reusable views in a Fabric warehouse.

- **15 – Data Warehouse Monitoring:**

  Monitored warehouse activity using DMVs and Query Insights to analyse performance and optimise query execution.
  
---
## Skills Demonstrated

- Microsoft Fabric workspace management
- Lakehouse architecture
- Power Query based ETL
- Dataflows (Gen2)
- Pipeline orchestration
- Delta table ingestion

---

This repository builds on and complements my previous learning repositories:

- **Azure Fundamentals**
- **Azure Data Fundamentals (DP-900)**

and represents the next stage of my **data engineering specialization on Microsoft Fabric**.
