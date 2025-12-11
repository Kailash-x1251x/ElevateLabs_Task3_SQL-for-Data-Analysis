-- Task 3: SQL Data Analysis
-- Objective: Analyze Ecommerce Data using SQL
-- Database: Superstore (SQLite)

-- ---------------------------------------------------------
-- QUERY 1: DATA EXTRACTION (SELECT, WHERE, ORDER BY)
-- Objective: Retrieve high-value transactions (> $1000) for the 'Technology' category.
-- ---------------------------------------------------------
SELECT `Order ID`, Category, Sales, Profit
FROM Orders
WHERE Sales > 1000 AND Category = 'Technology'
ORDER BY Sales DESC;

-- ---------------------------------------------------------
-- QUERY 2: DATA AGGREGATION (GROUP BY, SUM, AVG)
-- Objective: Calculate total sales and average profit per Region to identify top markets.
-- ---------------------------------------------------------
SELECT Region,
       SUM(Sales) as Total_Sales,
       AVG(Profit) as Avg_Profit
FROM Orders
GROUP BY Region
ORDER BY Total_Sales DESC;

-- ---------------------------------------------------------
-- QUERY 3: JOIN OPERATIONS (LEFT JOIN)
-- Objective: Identify returned orders to analyze potential revenue loss.
-- ---------------------------------------------------------
SELECT o.`Order ID`, o.Sales, r.Status
FROM Orders o
LEFT JOIN Returns r ON o.`Order ID` = r.`Order ID`
WHERE r.Status = 'Returned';

-- ---------------------------------------------------------
-- QUERY 4: ADVANCED ANALYSIS (SUBQUERY)
-- Objective: Extract customers who spent more than the overall average transaction value.
-- ---------------------------------------------------------
SELECT `Customer Name`, Sales
FROM Orders
WHERE Sales > (SELECT AVG(Sales) FROM Orders);
