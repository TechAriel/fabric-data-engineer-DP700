# Advanced Real-Time Dashboards in Microsoft Fabric

This exercise demonstrates how to build **interactive real-time dashboards** in Microsoft Fabric using Eventstream, Eventhouse, and KQL.

The lab focuses on creating dynamic dashboards with reusable queries, parameters, multiple pages, and auto-refresh capabilities.

---

## Architecture

Streaming Source (Bicycle Data)        
        ↓  
Eventstream (Ingestion)          
        ↓  
Eventhouse (KQL Table)            
        ↓  
Base Query (Reusable Logic)            
        ↓  
Dashboard Tiles (Charts + Map)          
        ↓  
Parameters + Pages + Auto Refresh  

---

## Dataset

Real-time bicycle rental station data (sample streaming source).

---

## Technologies Used

- Microsoft Fabric
- Eventstream
- Eventhouse (KQL Database)
- KQL (Kusto Query Language)
- Real-Time Dashboards
- Dashboard Parameters
- Data Visualization (Charts + Maps)

---

## Key Concepts Demonstrated

### Real-Time Dashboarding

- Creating dashboards from streaming data
- Building visual tiles (charts & maps)

---

### KQL Query Design

- Writing analytical queries
- Reusing logic via base queries

---

### Parameters & Interactivity

- Filtering data dynamically
- Multi-select parameter controls

---

### Dashboard Optimization

- Base queries to reduce duplication
- Multi-page dashboards
- Auto-refresh configuration

---

## Outcome

✔ Built real-time dashboard from streaming data  
✔ Created reusable base queries  
✔ Implemented parameterised filtering  
✔ Designed multi-page dashboard  
✔ Enabled auto-refresh for live updates  
✔ Shared dashboard for collaboration  
