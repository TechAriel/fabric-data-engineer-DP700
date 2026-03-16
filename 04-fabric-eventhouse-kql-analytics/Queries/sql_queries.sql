// Transact-SQL

// Retrieving data

SELECT TOP 100 *
FROM Bikestream

// retrieving specific columns

SELECT TOP 10 Street, No_Bikes
FROM Bikestream

// assigning an alias that renames No_Empty_Docks 

SELECT TOP 10 Street, No_Empty_Docks as ["Number of Empty Docks"]
FROM Bikestream

// Summarization -- query to find the total number of bikes available

SELECT sum(No_Bikes) as [Total Number of Bikes]
FROM Bikestream

// query to group the total number of bikes by neighbourhood

SELECT Neighbourhood, sum(No_Bikes) as [Total Number of Bikes]
FROM Bikestream
GROUP BY Neighbourhood

// CASE statement to group bike points with an unknown origin into a "Unidentified" category for follow-up

SELECT CASE
         WHEN Neighbourhood IS NULL OR Neighbourhood = "" THEN 'Unidentified' ELSE Neighbourhood
       END AS Neighbourhood,
       sum(No_Bikes) as [Total Number of Bikes]
FROM Bikestream
GROUP BY Neighbourhood

// query to order the grouped results by neighbourhood

SELECT Neighbourhood,
        sum(No_Bikes) AS [Total Number of Bikes] 
FROM Bikestream
GROUP BY Neighbourhood 
ORDER BY Neighbourhood ASC  

// query to filter the grouped data so that only rows having a neighbourhood of “Chelsea” are included in the results

SELECT Neighbourhood,
        sum(No_Bikes) AS [Total NUmber of Bikes]
FROM Bikestream
GROUP BY Neighbourhood
HAVING Neighbourhood = 'Chelsea'
ORDER BY Neighbourhood ASC

    
