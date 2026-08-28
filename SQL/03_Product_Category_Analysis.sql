-- Query 1: Which products should be promoted?

SELECT p."Product_Name",
    SUM(s."Quantity") AS Units_Sold,
    SUM(s."Revenue") AS Total_Revenue,
    SUM(s."Profit") AS Total_Profit
FROM Sales s
JOIN Products p ON s."Product_ID" = p."Product_ID"
GROUP BY p."Product_Name"
ORDER BY Total_Profit DESC, Units_Sold DESC;

-- Result / Observation:
-- The highest-profit products are the strongest candidates for promotion,
-- as they contribute significantly to overall profitability while also
-- generating strong sales. Promoting these products can help increase
-- their sales volume and overall revenue.


-- Query 2: Which products should be discontinued or reviewed?

SELECT p."Product_Name",
    SUM(s."Quantity") AS Units_Sold,
    SUM(s."Revenue") AS Total_Revenue,
    SUM(s."Profit") AS Total_Profit
FROM Sales s
JOIN Products p ON s."Product_ID" = p."Product_ID"
GROUP BY p."Product_Name"
ORDER BY Total_Profit ASC, Units_Sold ASC;

-- Result / Observation:
-- Shortbread Cookies, Dark Choco Cookie, and Mint Kombucha are among
-- the lowest-profit products. These products may need to be reviewed
-- based on their sales volume, revenue, pricing, or costs before
-- deciding whether to discontinue them.


-- Query 3: Which products have the highest profit margin?

SELECT p."Product_Name",
    ROUND(SUM(s."Profit") / SUM(s."Revenue") * 100,2) AS Profit_Margin
FROM Sales s
JOIN Products p ON s."Product_ID" = p."Product_ID"
GROUP BY p."Product_Name"
ORDER BY Profit_Margin DESC
LIMIT 10;

-- Result / Observation:
-- Babyccino has the highest profit margin at 72.17%, followed by
-- Lemon Iced Tea at 69.75% and Thai Green Tea at 69.67%.
-- These products generate a high proportion of profit relative
-- to their revenue and could be prioritized for promotion.


-- Query 4: Which products contribute the most to total revenue?

SELECT p."Product_Name",
    SUM(s."Revenue") AS Total_Revenue
FROM Sales s
JOIN Products p ON s."Product_ID" = p."Product_ID"
GROUP BY p."Product_Name"
ORDER BY Total_Revenue DESC;

-- Result / Observation:
-- French Toast generates the highest total revenue at 46,948,
-- followed by Mocha Frappe at 44,136.30 and Pan Cake- nutella &
-- butter at 42,614. These products are major contributors to the
-- cafe's overall revenue and are important products for sales performance.
