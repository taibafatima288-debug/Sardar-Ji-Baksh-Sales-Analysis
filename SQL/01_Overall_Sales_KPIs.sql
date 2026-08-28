-- Query 1: What is the total revenue, total profit, and total number of sales?

SELECT
    SUM("Revenue") AS "Total Revenue",
    SUM("Profit") AS "Total Profit",
    COUNT(*) AS "Total Orders" FROM Sales;

-- Result:
-- Total Revenue: 891261.20
-- Total Profit: 539595.20
-- Total Orders: 1562


-- Query 2: What is the average order value?

SELECT AVG("Revenue") AS "Average Order Value"
FROM Sales;

-- Result:
-- Average Order Value: 570.59
