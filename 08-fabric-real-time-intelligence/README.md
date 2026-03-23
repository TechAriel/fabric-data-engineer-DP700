# Real-Time Intelligence in Microsoft Fabric

This exercise demonstrates how to build a **real-time analytics solution** in Microsoft Fabric using Eventstreams, Eventhouse, KQL, dashboards, and alerts.

The lab focuses on ingesting streaming data, storing it in a KQL database, querying it in real time, and visualizing insights with alerts.

---

## Architecture

Streaming Source (Stock Data)          
        ↓  
Eventstream (Ingestion)                
        ↓  
Eventhouse (KQL Database Table)            
        ↓  
KQL Queries (Real-Time Analytics)              
        ↓  
Dashboard (Visualization)            
        ↓  
Activator Alert (Event Trigger)  

---

## Dataset

Real-time stock market sample data (streaming source).

---

## Technologies Used

- Microsoft Fabric
- Real-Time Hub
- Eventstream
- Eventhouse (KQL Database)
- KQL (Kusto Query Language)
- Real-Time Dashboard
- Activator (Alerts)

---

## Key Concepts Demonstrated

### Real-Time Data Ingestion

- Streaming data via Eventstream
- Connecting real-time sources from Real-Time Hub

---

### Eventhouse & KQL

- Storing streaming data in KQL tables
- Querying real-time data using KQL

---

### Real-Time Analytics

- Aggregations over time windows
- Dynamic data updates

---

### Data Visualization

- Building live dashboards
- Converting query results into charts

---

### Alerts & Automation

- Creating alerts using Activator
- Triggering actions based on data changes

---

## Outcome

✔ Ingested real-time streaming data  
✔ Stored data in Eventhouse table  
✔ Queried live data using KQL  
✔ Built real-time dashboard visualization  
✔ Configured alert based on price changes  
