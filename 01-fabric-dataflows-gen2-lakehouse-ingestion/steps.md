# Technical Breakdown

## Step 1 – Create Fabric Workspace

Created a new Fabric workspace with Fabric capacity enabled.

Purpose:
The workspace acts as the **container for all Fabric assets**, including lakehouses, pipelines, and dataflows.

---

## Step 2 – Create Lakehouse

Created a new **Fabric Lakehouse** inside the workspace.

Key configuration:

- Lakehouse schemas disabled
- Default OneLake storage

Purpose:

Lakehouses provide **centralized storage for structured and unstructured analytics data**.

---

## Step 3 – Create Dataflow (Gen2)

Created a **Dataflow Gen2** from the lakehouse interface.

Data source: orders.csv 

Source URL: https://raw.githubusercontent.com/MicrosoftLearning/dp-data/main/orders.csv

Authentication method:

Anonymous

Purpose:

Dataflows enable **ETL-style ingestion using Power Query transformations**.

---

## Step 4 – Apply Data Transformation

Inside Power Query editor:

Created custom column: ``` MonthNo = Date.Month([OrderDate]) ```



