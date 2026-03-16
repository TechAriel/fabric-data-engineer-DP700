# Real-Time Analytics with Eventhouse and KQL in Microsoft Fabric

This exercise demonstrates how to work with **real-time event data in Microsoft Fabric** using an **Eventhouse** and querying the data with **Kusto Query Language (KQL)** and **Transact-SQL**.

Eventhouse is part of Fabric’s **Real-Time Intelligence** workload and enables ingestion and analysis of streaming event data at scale.

---

## Architecture

Real-Time Dataset            
        ↓  
Microsoft Fabric Eventhouse              
        ↓  
KQL Database              
        ↓  
Query Analysis (KQL / SQL)            

---

## Dataset

Sample **bike station telemetry data** from the Fabric Real-Time Intelligence sample environment.

Table used: `Bikestream`

The dataset contains information about:

- Street location
- Number of available bikes
- Number of empty docks
- Neighbourhood
- Station activity metrics

---

## Technologies Used

- Microsoft Fabric
- Eventhouse
- KQL Database
- Kusto Query Language (KQL)
- Transact-SQL endpoint
- Real-Time Intelligence workload

---

## Key Concepts Demonstrated

### Real-Time Data Storage

Eventhouse stores event data in **KQL databases** optimized for high-volume streaming data.

---

### KQL Querying

KQL enables fast analytical queries using operators like:

- `project`
- `summarize`
- `where`
- `order by`
- `case`
- `take`

---

### Aggregation and Data Analysis

Using `summarize` and grouping functions to calculate metrics such as:

- Total bikes available
- Bikes available per neighbourhood

---

### Data Filtering

Filtering records using logical conditions.

Example: `| where Neighbourhood == "Chelsea"`

---

### SQL Compatibility

Although KQL is the primary query language, Eventhouse provides a **T-SQL endpoint** allowing SQL queries for compatibility with external systems.

---

## Outcome

✔ Created a Fabric Eventhouse  
✔ Explored a KQL database and real-time dataset  
✔ Queried event data using **Kusto Query Language**  
✔ Performed aggregation and filtering operations  
✔ Executed equivalent **Transact-SQL queries** against the dataset


