-- Dynamic Management Views


-- details of all connections to the data warehouse via sys.dm_exec_connections DMV

SELECT *
FROM sys.dm_exec_connections;

-- details of all authenticated sessions via sys.dm_exec_sessions DMV

SELECT * 
FROM sys.dm_exec_sessions;

-- details of all requests being executed in the data warehouse via sys.dm_exec_requests DMV

SELECT * 
FROM sys.dm_exec_requests;

-- details of all running queries in the database by joining the DMVs

SELECT connections.connection_id,
        sessions.session_id, sessions.login_name, sessions.login_time,
        requests.command, requests.start_time, requests.total_elapsed_time
FROM sys.dm_exec_sessions AS sessions
JOIN sys.dm_exec_connections AS connections
ON sessions.session_id = connections.session_id
JOIN sys.dm_exec_requests AS requests
ON requests.session_id = sessions.session_id
WHERE requests.status = 'running'
    AND requests.database_id = DB_ID()
ORDER BY requests.total_elapsed_time DESC;

-- Simulating long-running query

WHILE 1 = 1
BEGIN
    SELECT * 
    FROM Trip;
END


-- Query Insights

  
-- details of previously executed queries via queryinsights.exec_requests_history view
SELECT *
FROM queryinsights.exec_requests_history;

-- details of frequently run queries via queryinsights.frequently_run_queries view

SELECT *
FROM queryinsights.frequently_run_queries;

-- details of all queries and their durations via queryinsights.long_running_queries view

SELECT *
FROM queryinsights.long_running_queries;
