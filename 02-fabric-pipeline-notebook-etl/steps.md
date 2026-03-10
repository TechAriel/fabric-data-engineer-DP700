# Technical Walkthrough

## Step 1 – Create Fabric Workspace

A new Microsoft Fabric workspace was created with Fabric capacity enabled.

Purpose: Workspaces provide an isolated environment for managing Fabric assets such as pipelines, notebooks, and lakehouses.

---

## Step 2 – Create a Lakehouse

A Fabric Lakehouse was created inside the workspace.

Configuration: Lakehouse schemas disabled.

A folder named **new_data** was created under the Files section.

Purpose: The lakehouse acts as the central storage layer for both raw and processed data.

---

## Step 3 – Create Data Pipeline

A new pipeline named **Ingest Sales Data** was created.

A **Copy Data activity** was configured to ingest data from an external HTTP source.

Source dataset:
```
https://raw.githubusercontent.com/MicrosoftLearning/dp-data/main/sales.csv
```

Destination: Lakehouse storage `Files/new_data/sales.csv`

Purpose: This activity copies the raw dataset into **OneLake storage**.

---

## Step 4 – Verify Data Ingestion

After running the pipeline, the dataset was confirmed in: Lakehouse → Files → new_data → sales.csv

This verified successful ingestion of the raw dataset.

---

## Step 5 – Create Spark Notebook

A new Fabric notebook was created.

The notebook included a **parameter cell** defining the destination table name.

`table_name = "sales"`

This enables dynamic execution when the notebook is triggered from a pipeline.

---

## Step 6 – Implement Data Transformation (PySpark)

The notebook reads the raw dataset and applies several transformations.

Key operations include:

- Reading CSV files from the lakehouse Files directory
- Deriving Year and Month from OrderDate
- Splitting CustomerName into FirstName and LastName
- Reordering selected columns
- Writing results to a Delta table

Example:


