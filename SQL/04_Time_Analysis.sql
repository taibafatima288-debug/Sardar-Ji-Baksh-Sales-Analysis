-- Query 1: Which months generated the highest revenue?

SELECT TO_CHAR("Date",'Month') AS Month,
    SUM("Revenue") AS Revenue
FROM Sales
GROUP BY TO_CHAR("Date",'Month'),EXTRACT(MONTH FROM "Date")
ORDER BY EXTRACT(MONTH FROM "Date");

-- Observation:
-- Revenue remained relatively strong throughout the year, with
-- September generating the highest revenue at 81,827.9, followed
-- by October at 81,777.2 and February at 80,965.9.
-- May and December recorded the lowest revenue.


-- Query 2: Which months generated the highest profit?

SELECT TO_CHAR("Date",'Month') AS Month,
    SUM("Profit") AS Profit
FROM Sales
GROUP BY TO_CHAR("Date",'Month'),EXTRACT(MONTH FROM "Date")
ORDER BY EXTRACT(MONTH FROM "Date");

-- Observation:
-- September generated the highest profit at 50,208.9, followed by
-- June at 49,503.0 and October at 49,425.2.
-- December recorded the lowest profit at 34,692.5, while May was
-- also relatively low at 35,348.9.
