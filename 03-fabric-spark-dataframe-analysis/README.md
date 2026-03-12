# Apache Spark DataFrame Analysis in Microsoft Fabric

This exercise demonstrates how to use **Apache Spark within Microsoft Fabric notebooks** to ingest, transform, and analyze data stored in a Fabric Lakehouse.

Using PySpark, the workflow loads CSV data into Spark DataFrames, performs transformations, saves optimized file formats, and creates analytical tables that can be queried using SQL.

---

## Architecture

CSV Data Files     
        ↓  
Fabric Lakehouse (OneLake storage)       
        ↓  
Spark Notebook (PySpark)         
        ↓  
DataFrame Transformations         
        ↓  
Parquet Files / Delta Tables        
        ↓  
SQL Analytics + Visualization        

---

## Dataset

Sales order dataset containing historical order records.

---

## Technologies Used

- Microsoft Fabric
- Fabric Lakehouse
- Apache Spark
- PySpark DataFrames
- Spark SQL
- Delta Lake
- Parquet storage
- Matplotlib
- Seaborn

---

## Key Engineering Concepts Demonstrated

### DataFrame operations

- Filtering
- Column selection
- Aggregation
- Grouping

### Data transformations

- Derived columns
- String parsing
- Column restructuring

### Storage optimization

- Converting CSV to **Parquet**
- **Partitioning datasets** for improved query performance

### Lakehouse analytics

- Creating **Delta tables**
- Querying using **Spark SQL**

### Data visualization

- Built-in notebook charts
- Python visualization libraries
  - Matplotlib
  - Seaborn

---

## Outcome

✔ Spark DataFrames used to analyze raw datasets  
✔ Data transformed and stored in optimized formats  
✔ Delta table created in the Lakehouse  
✔ SQL queries executed against the dataset  
✔ Data visualized using Python libraries

