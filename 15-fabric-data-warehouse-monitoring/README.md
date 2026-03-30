# Monitoring & Performance Insights in Microsoft Fabric Warehouse

This project demonstrates how to **monitor activity and analyse query performance** in a Microsoft Fabric Data Warehouse using **Dynamic Management Views (DMVs) and Query Insights.**

The lab focuses on tracking connections, sessions, running queries, and historical query performance for optimisation and troubleshooting.

---

## Architecture

User Queries  
      ↓                  
Fabric Data Warehouse (sample-dw)  
      ↓                    
DMVs (Live Monitoring)  
      ↓              
Query Insights (Historical Analysis)  
      ↓                  
Performance Optimization  

---

## Dataset

Taxi trip dataset (sample warehouse provided by Microsoft Fabric).

---

## Technologies Used

- Microsoft Fabric
- Data Warehouse
- T-SQL (Transact-SQL)
- Dynamic Management Views (DMVs)
- Query Insights

---

## Key Concepts Demonstrated

### Real-Time Monitoring

- Tracking active connections
- Monitoring user sessions
- Observing running queries

---

### Performance Analysis

- Identifying long-running queries
- Monitoring execution time
- Understanding workload behavior

---

### Query Insights

- Historical query tracking
- Frequently executed queries
- Performance bottleneck detection

---

## Outcome

✔ Monitored live warehouse activity using DMVs  
✔ Identified running and long-running queries  
✔ Analyzed query history using Query Insights  
✔ Simulated workload for monitoring validation  
✔ Gained insights into performance tuning strategies  
