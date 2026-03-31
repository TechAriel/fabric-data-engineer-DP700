# Technical Breakdown

## Step 1 – Create Workspace

- Fabric workspace created with capacity enabled

---

## Step 2 – Create Sample Data Warehouse

Warehouse: `sample-dw`

- Preloaded taxi dataset

---

## Step 3 – Explore DMVs (Connections)

Query: `sys.dm_exec_connections`

Purpose: - Identify all active connections to the warehouse

![DMV Connections](screenshots/dmv-connections.png)

---

## Step 4 – Explore DMVs (Sessions)

Query: `sys.dm_exec_sessions`

Purpose:

- View authenticated user sessions
- Analyze login activity
![DMV Sessions](screenshots/dmv-sessions.png)
---

## Step 5 – Explore DMVs (Requests)

Query: `sys.dm_exec_requests`

Purpose: - Monitor currently executing queries

![DMV Requests](screenshots/dmv-requests.png)

---

## Step 6 – Combine DMVs

- Joined connections, sessions, and requests
- Filtered for running queries only

Insights:

- Active query tracking
- Execution duration monitoring
![Running Queries](screenshots/running-queries.png)
---

## Step 7 – Simulate Long-Running Query

Query: `WHILE 1=1 SELECT * FROM Trip`

Purpose: - Generate workload for monitoring

![Long running query](screenshots/long-running-query-time1.png)

---

## Step 8 – Monitor Live Execution

- Observed query in DMV results
- Tracked elapsed execution time
  
![Long running query timelapse](screenshots/long-running-query-time2.png)

---

## Step 9 – Stop Query Execution

- Cancelled long-running query
- Verified removal from active sessions
![Query Stopped](screenshots/query-cancelled.png)
---

## Step 10 – Explore Query Insights

### exec_requests_history

- Historical query execution details
![Query History](screenshots/query-history.png)
---

### frequently_run_queries

- Identified commonly executed queries

![Frequent Queries](screenshots/frequent-queries.png)

---

### long_running_queries

- Analyzed performance-heavy queries

![Long running insights](screenshots/long-running-insights.png)

---

## Step 11 – Clean Up

- Workspace deleted after completion
