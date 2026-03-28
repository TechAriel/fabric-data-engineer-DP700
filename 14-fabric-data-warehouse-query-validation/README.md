# Querying & Validating Data in Microsoft Fabric Warehouse

This project demonstrates how to **query, validate, and prepare data** for analytics using a Microsoft Fabric Data Warehouse.

The focus is on writing analytical SQL queries, ensuring data quality, and creating reusable views for reporting.

---

## Architecture

Sample Data Warehouse  
        ↓          
SQL Queries (Aggregations & Joins)  
        ↓            
Data Validation Checks  
        ↓            
Data Cleansing (DELETE invalid records)  
        ↓            
Reusable View (Filtered Dataset)  

---

## Dataset

Taxi trip dataset (preloaded sample warehouse in Microsoft Fabric).

---

## Technologies Used

- Microsoft Fabric
- Data Warehouse
- T-SQL (Transact-SQL)
- Data Validation Techniques
- Views for Data Modeling

---

## Key Concepts Demonstrated

### SQL Analytics

- Aggregations (SUM, AVG, COUNT)
- GROUP BY and JOIN operations
- Time-based analysis

---

### Data Validation & Quality

- Detecting anomalies (extreme durations)
- Identifying invalid records (negative values)
- Data cleansing using DELETE

---

### Data Modeling

- Creating reusable views
- Filtering datasets for reporting use cases

---

## Outcome

✔ Queried warehouse using analytical SQL  
✔ Performed data consistency checks  
✔ Cleaned invalid records  
✔ Created reusable reporting view  
✔ Prepared dataset for downstream analytics  
