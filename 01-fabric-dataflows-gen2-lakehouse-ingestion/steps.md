# Technical Breakdown

## Step 1 – Create Fabric Workspace

Created a new Fabric workspace with Fabric capacity enabled.

Purpose: The workspace acts as the **container for all Fabric assets**, including lakehouses, pipelines, and dataflows.

---

## Step 2 – Create Lakehouse

Created a new **Fabric Lakehouse** inside the workspace.

Key configuration:

- Lakehouse schemas disabled
- Default OneLake storage

Purpose: Lakehouses provide **centralized storage for structured and unstructured analytics data**.

---

## Step 3 – Create Dataflow (Gen2)

Created a **Dataflow Gen2** from the lakehouse interface.

Data source: orders.csv 

Source URL: 
```bash
https://raw.githubusercontent.com/MicrosoftLearning/dp-data/main/orders.csv 
```

Authentication method:

Anonymous

Purpose: Dataflows enable **ETL-style ingestion using Power Query transformations**.

---

## Step 4 – Apply Data Transformation

Inside Power Query editor:

Created custom column: 
```bash
MonthNo = Date.Month([OrderDate]) 
```

Data types validated:

OrderDate → Date  
MonthNo → Whole Number

Purpose: This transformation extracts the **month component from the order date**, which is commonly used for time-based analytics.

---

## Step 5 – Configure Data Destination

Added **Lakehouse destination** to the Dataflow.

Configuration:

Destination type: Lakehouse

Table name: ` orders `


Load behavior:

Append

Purpose: This step defines how the transformed dataset is written in the analytics platform.

---

## Step 6 – Run Dataflow

Executed **Save & Run** to create and execute the Dataflow.

Result: Data successfully loaded into the **Lakehouse orders table**.

---

## Step 7 – Create Data Pipeline

Created a **Data Pipeline** named:Load data

Added activity: Dataflow
Selected dataflow: Dataflow 1


Purpose: Pipelines allow orchestration and scheduling of ingestion processes.

---

## Step 8 – Execute Pipeline

Ran the pipeline to trigger the Dataflow execution.

Result: Pipeline completed successfully.

---

## Step 9 – Verify Lakehouse Table

Navigated to the Lakehouse:

Tables → orders

Confirmed the dataset was successfully ingested.

---

## Step 10 – Clean Up Resources

Deleted the Fabric workspace to prevent unnecessary resource usage.




