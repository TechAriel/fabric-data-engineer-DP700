-- Querying the sample-dw data warehouse

-- total number of trips and total revenue by month
SELECT D.MonthName,
        COUNT(*) AS TotalTrips,
        SUM(T.TotalAmount) AS TotalRevenue
FROM dbo.Trip AS T  
JOIN dbo.[Date] AS D 
    ON T.DateID = D.DateID  
GROUP BY D.MonthName;

-- the average trip duration and distance by day of the week
SELECT D.DayName,
        AVG(T.TripDurationSeconds) AS AvgDuration,
        AVG(T.TripDistanceMiles) AS AvgDistance
FROM dbo.Trip AS T 
JOIN dbo.[Date] AS D
    ON T.[DateID] = D.[DateID]
GROUP BY D.DayName;

-- top 10 most popular pickup and dropoff locations
SELECT TOP 10
    G.City,
    COUNT(*) AS TotalTrips
FROM dbo.Trip T 
JOIN dbo.Geography G 
ON T.DropoffGeographyID = G.GeographyID
GROUP BY G.City
ORDER BY TotalTrips DESC;

-- Saving query as view on Fabric Warehouse via "Save as a View" on SQL Query Editor
    -- can be used to filter certain the tables for a group of users who will use the data to generate reports.

-- the average trip duration and distance by day of the week & filter the data to include only records from the month of January 
SELECT D.DayName,
        AVG(T.TripDurationSeconds) AS AvgDuration,
        AVG(T.TripDistanceMiles) AS AvgDistance
FROM dbo.Trip AS T 
JOIN dbo.[Date] AS D
    ON T.[DateID] = D.[DateID]
WHERE D.[Month] = 1
GROUP BY D.DayName;

-- Verifying data consistency
    -- ensures that the data is accurate and reliable for analysis and decision-making

-- Check for trips with unusually long duration
SELECT COUNT(*)
FROM dbo.Trip
WHERE TripDurationSeconds > 86400; -- 24 hours

-- Remove trips with negative trip duration
DELETE FROM dbo.Trip 
WHERE TripDurationSeconds < 0;

/* There are several ways to handle inconsistent data rather than removing it
 one alternative is to replace it with a different value such as the mean or median.*/


-- Query View
-- Query on vw_JanTrip view for Day of the month with highest average trip duration and distance

SELECT TOP 1 DayName, MAX(AvgDuration) AS AvgDuration, MAX(AvgDistance) AS AvgDistance
FROM vw_JanTrip
GROUP BY DayName
ORDER BY AvgDuration DESC, AvgDistance DESC;
