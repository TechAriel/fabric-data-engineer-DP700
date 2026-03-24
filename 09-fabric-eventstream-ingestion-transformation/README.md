# Eventstream Ingestion & Transformation in Microsoft Fabric

This exercise demonstrates how to use **Eventstream in Microsoft Fabric** to ingest, transform, and route real-time data into an Eventhouse.

The lab focuses on capturing streaming data, applying transformations, and analyzing both raw and aggregated outputs using KQL.

---

## Architecture

Streaming Source (Bicycle Data)        
        ↓  
Eventstream (Ingestion)          
        ↓  
Raw Table (Eventhouse - bikes)        
        ↓  
Transformation (Group By / Aggregation)          
        ↓  
Aggregated Table (bikes-by-street)          
        ↓  
KQL Queries (Analysis)  
  
---

## Dataset

Real-time bicycle station data (sample streaming source).

---

## Technologies Used

- Microsoft Fabric
- Eventstream
- Eventhouse (KQL Database)
- KQL (Kusto Query Language)
- Real-Time Transformations

---

## Key Concepts Demonstrated

### Eventstream Ingestion

- Creating eventstreams from sample data
- Connecting sources to destinations

---

### Eventhouse Integration

- Writing streaming data to KQL tables
- Managing real-time datasets

---

### Stream Transformations

- Group By aggregations
- Tumbling window processing
- Time-based analytics

---

### Real-Time Analytics

- Querying raw vs transformed data
- Aggregating streaming events

---

## Outcome

✔ Ingested real-time streaming data  
✔ Stored raw data in Eventhouse table  
✔ Applied transformation using Group By  
✔ Created aggregated real-time dataset  
✔ Queried streaming data using KQL  
