# Technical Breakdown

## Step 1 – Create Workspace

- Fabric workspace created with capacity enabled

---

## Step 2 – Create Sample Data Warehouse

Warehouse: `sample-dw`

- Preloaded with taxi trip dataset

![Sample Data Warehouse](screenshots/sample-warehouse.png)

---

## Step 3 – Query Aggregated Data

### Query 1 – Trips & Revenue by Month

- Joined Trip and Date tables
- Aggregated:
  - Total trips
  - Total revenue

![Trips & Revenue by Month](screenshots/query-monthly-revenue-&-trips.png)

---

### Query 2 – Average Trip Metrics

- Calculated:
  - Average trip duration
  - Average trip distance
- Grouped by day of week

![Avg Trip Metrics by Day of Week](screenshots/query-avg-duration-&-distance.png)

---

### Query 3 – Top Locations

- Identified top 10 cities by trip volume
- Joined Trip and Geography tables

![Top Cities by trip Vol](screenshots/top-cities.png)

---

## Step 4 – Verify Data Consistency

### Check 1 – Long Trips

- Identified trips longer than 24 hours

![Trips Longer than Usual](screenshots/data-validation-long-trips.png)

---

### Check 2 – Negative Durations

- Detected invalid negative values

![Trips with negative duration](screenshots/negative-duration-check.png)

---

## Step 5 – Data Cleansing

- Removed invalid records:
```
DELETE FROM dbo.Trip  
WHERE TripDurationSeconds < 0
```
---

## Step 6 – Create View

View: `vw_JanTrip`

Purpose:

- Filter trips for January
- Simplify reporting queries

![View](screenshots/view-created.png)

---

## Step 7 – Save & Validate View

- View stored in dbo schema
- Queried for reporting use
    - Day of Week with highest Average Duration & Distance

![Query on View](screenshots/view-results.png)

---

## Step 8 – Clean Up

- Workspace deleted after completion
