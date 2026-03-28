# Lakehouse to Warehouse ETL in Microsoft Fabric

This project demonstrates how to **load data from a lakehouse into a data warehouse** using T-SQL in Microsoft Fabric.

It showcases a real-world **ETL pattern**, combining lakehouse storage with warehouse modeling and analytical querying.

---

## Architecture

CSV File (Raw Data)                                                                     
            ↓              
Lakehouse (Staging Table)                                                                               
            ↓              
SQL View (Abstraction Layer)                                                                                  
            ↓              
Stored Procedure (ETL Logic)                                                                                 
            ↓                
Data Warehouse (Fact + Dimensions)                                                                                 
            ↓                
Analytical Queries

---

## Dataset

Sales dataset (CSV) containing:

- Orders
- Customers
- Products
- Pricing & tax data

---

## Technologies Used

- Microsoft Fabric
- Lakehouse (staging layer)
- Data Warehouse (SQL engine)
- T-SQL (Stored Procedures, Views)
- Cross-database queries
- ETL Design

---

## Key Concepts Demonstrated

### Hybrid Architecture

- Combining lakehouse + warehouse
- Using lakehouse as staging layer

---

### ETL with T-SQL

- Stored procedures for data loading
- Incremental logic using NOT EXISTS

---

### Data Modeling

- Fact table (Sales)
- Dimension tables (Customer, Item)

---

### Data Abstraction

- View layer for staging data
- Simplifies ETL logic

---

### Analytical Queries

- Aggregations (SUM)
- Ranking with window functions
- Category-based analysis

---

## Outcome

✔ Built end-to-end ETL pipeline  
✔ Loaded warehouse from lakehouse  
✔ Created stored procedure for reusable data loads  
✔ Designed fact & dimension tables  
✔ Performed advanced analytical queries  
✔ Demonstrated hybrid data architecture  
