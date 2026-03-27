# Data Warehouse Analytics in Microsoft Fabric

This project demonstrates how to build and analyze a **relational data warehouse** in Microsoft Fabric using T-SQL.

Unlike lakehouses, Fabric data warehouses support **full SQL capabilities**, including inserts, updates, views, and relational modeling.

---

## Architecture

Relational Tables (Dim + Fact)                                          
        ↓                          
T-SQL Transformations                                        
       ↓                          
Aggregations (JOIN + GROUP BY)                        
       ↓                              
Views (Reusable Logic)                        
       ↓                              
Visual Queries / Semantic Model

---

## Dataset

Sample sales dataset including:

- Customers
- Products
- Dates
- Sales transactions

---

## Technologies Used

- Microsoft Fabric
- Data Warehouse (SQL Engine)
- T-SQL
- Relational Modeling (Star Schema)
- Views
- Visual Query Designer

---

## Key Concepts Demonstrated

### Data Warehouse Design

- Fact and dimension tables
- Star schema modeling
- Relationships via keys

---

### SQL Analytics

- JOIN operations across tables
- Aggregations (SUM, GROUP BY)
- Multi-dimensional analysis

---

### Data Transformation

- Creating tables
- Inserting structured data
- Building reusable views

---

### Query Abstraction

- Encapsulating logic using views
- Reusing analytical queries

---

### No-Code Querying

- Visual query builder
- Drag-and-drop joins and filters

---

## Outcome

✔ Built a relational data warehouse  
✔ Created fact and dimension tables  
✔ Performed analytical SQL queries  
✔ Created reusable SQL views  
✔ Used visual query builder  
✔ (Optional) Designed semantic model relationships  
