-- Query 1: Do discounts actually improve sales?

SELECT CASE WHEN "Discount_%" > 0
        THEN 'Discount'
        ELSE 'No Discount' END AS Discount_Status,
    COUNT(*) AS Orders,
    ROUND(AVG("Revenue"), 2) AS Avg_Revenue,
    ROUND(AVG("Profit"), 2) AS Avg_Profit
FROM Sales
GROUP BY Discount_Status;

-- Observation:
-- Orders with no discount generated higher average revenue and
-- average profit than discounted orders. The average revenue was
-- 601.61 and average profit was 379.14 for orders without discounts,
-- compared with 539.41 revenue and 311.59 profit for discounted orders.
-- This suggests that discounts did not improve average sales or profit
-- in this dataset.


-- Query 2: Which payment method generates the highest average
-- revenue per transaction?

SELECT "Payment_Method",
    COUNT(*) AS Transactions,
    ROUND(AVG("Revenue"), 2) AS Avg_Revenue,
    ROUND(AVG("Profit"), 2) AS Avg_Profit
FROM Sales
GROUP BY "Payment_Method"
ORDER BY Avg_Revenue DESC;

-- Observation:
-- Cash generated the highest average revenue per transaction at
-- 593.55, followed by Card at 582.56, Wallet at 564.00, and UPI
-- at 556.46. Cash also had the highest average profit at 357.40
-- among the payment methods.
