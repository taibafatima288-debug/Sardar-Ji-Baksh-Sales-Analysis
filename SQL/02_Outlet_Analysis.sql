-- Query 1: Which outlets generate the highest profit?

SELECT "Store_ID",
    SUM("Profit") AS Profit
FROM Sales
GROUP BY "Store_ID"
ORDER BY Profit DESC;

-- Result:
-- S003: 116167.3
-- S004: 112354.6
-- S001: 110133.2
-- S005: 104372.4
-- S002: 96567.7

-- Observation:
-- S003 generates the highest total profit, followed by S004.
-- S002 generates the lowest total profit.


-- Query 2: Which outlets generate the highest revenue?

SELECT "Store_ID",
    SUM("Revenue") AS Revenue
FROM Sales
GROUP BY "Store_ID"
ORDER BY Revenue DESC;

-- Result:
-- S003: 192181.3
-- S004: 185508.6
-- S001: 181522.2
-- S005: 172193.4
-- S002: 159855.7

-- Observation:
-- S003 generates the highest total revenue, followed by S004.
-- S002 generates the lowest total revenue.


-- Query 3: Which outlets have the highest average revenue per sale?

SELECT st."Store_ID",ROUND(AVG(s."Revenue"), 2) AS Average_Revenue
FROM Sales s
JOIN Stores st ON s."Store_ID" = st."Store_ID"
GROUP BY st."Store_ID"
ORDER BY Average_Revenue DESC;

-- Result:
-- S001: 591.28
-- S004: 583.36
-- S003: 580.61
-- S005: 551.90
-- S002: 543.73

-- Observation:
-- S001 has the highest average revenue per sale,
-- while S002 has the lowest average revenue per sale.
