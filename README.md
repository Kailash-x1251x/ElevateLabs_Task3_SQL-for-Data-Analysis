# Task 3: SQL Data Analysis (Superstore)

## 🚀 Objective
The goal of this task was to demonstrate **SQL proficiency** by querying a relational database. I analyzed the "Sample Superstore" sales data to extract key business insights, involving data aggregation, joining multiple tables, and complex filtering.

## 🛠️ Tools Used
- **SQL (SQLite)**: Used for querying the database.
- **Python (Pandas & sqlite3)**: Used to load the CSV data into a SQL database environment and execute queries.
- **Dataset**: Sample - Superstore CSV

## 🗄️ Database Schema
To simulate a real-world relational environment, I created two tables:
1.  **Orders Table**: Contains all transaction details (Order ID, Sales, Profit, Region, etc.).
2.  **Returns Table**: A simulated table containing `Order ID` and `Status` to practice `JOIN` operations.

## 🔍 Key Queries & Insights

### 1. High-Value Transactions
- **Query Type**: `SELECT`, `WHERE`, `ORDER BY`
- **Objective**: Retrieved all technology orders with sales exceeding $1000.
- **Insight**: Identifies high-ticket items that drive significant revenue but may carry higher return risks.

### 2. Regional Performance
- **Query Type**: `GROUP BY`, `SUM()`, `AVG()`
- **Objective**: Calculated Total Sales and Average Profit per Region.
- **Insight**: The **West** region generates the highest revenue, while the **South** has the lowest average profit margins.

### 3. Return Analysis
- **Query Type**: `LEFT JOIN`
- **Objective**: Joined `Orders` with `Returns` to identify lost revenue from returned goods.
- **Insight**: Allows the business to quantify the financial impact of returns.

### 4. High-Spender Identification
- **Query Type**: Subquery
- **Objective**: Filtered for customers whose transaction value was higher than the overall average order value.
- **Insight**: Segments "Premium" customers for targeted marketing campaigns.
