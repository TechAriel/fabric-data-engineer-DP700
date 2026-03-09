# Fabric Dataflows (Gen2) Lakehouse Ingestion

This exercise demonstrates how to build an **ETL ingestion workflow using Dataflows (Gen2)** in Microsoft Fabric and orchestrate it using a **Data Pipeline**.

The dataflow performs transformations using **Power Query Online** and loads the transformed data into a **Fabric Lakehouse table**, which can later be used for analytics and reporting.

---

## Architecture Implemented

Fabric Workspace  
↓  
Lakehouse Storage  
↓  
Dataflow (Gen2) – Power Query Transformations  
↓  
Lakehouse Table (orders)  
↓ 
Pipeline Orchestration

---

## Dataset Used

Sample orders dataset

