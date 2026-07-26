--
---------------------------------------------------------
-- Laboartory Sales Analysis Project
-- SQL Analysis of Diagnostic Test Revenue
-- Author: Maryam Abubakar
-- Tool: MySQL
--
---------------------------------------------------------


---------------------------------------------------------
-- 1. Total Revenue

SELECT
SUM(Revenue_NGN) as Total_Revenue
FROM laboratory_sales_data;

---------------------------------------------------------


---------------------------------------------------------
-- 2. Total Number of Tests

SELECT
COUNT(*) AS Total_Tests
FROM laboratory_sales_data;

---------------------------------------------------------


---------------------------------------------------------
-- 3. Most Requested Tests

SELECT 
Test_Name,
COUNT(*) as Number_of_Tests
FROM laboratory_sales_data
GROUP BY Test_Name
ORDER BY Number_of_Tests DESC;

---------------------------------------------------------

---------------------------------------------------------
-- 4. Top Revenue-Generating Tests
SELECT 
Test_Name,
SUM(Revenue_NGN) as Total_Revenue
FROM laboratory_sales_data
GROUP BY Test_Name
ORDER BY Total_Revenue DESC
LIMIT 10;

---------------------------------------------------------

---------------------------------------------------------
-- 5. Average Revenue per Test

SELECT 
AVG(Revenue_NGN) AS Average_Revenue_Per_Test
From laboratory_sales_data;

---------------------------------------------------------

---------------------------------------------------------
-- 6. Revenue by Branch

SELECT
Branch,
SUM(Revenue_NGN) AS Branch_Revenue
FROM laboratory_sales_data
GROUP BY Branch
ORDER BY Branch_Revenue DESC;

---------------------------------------------------------

---------------------------------------------------------
-- 7. Monthly Revenue Trend

SELECT
MONTH(Date) AS Month,
SUM(Revenue_NGN) AS Monthly_Revenue
FROM laboratory_sales_data
GROUP BY Month(Date)
ORDER BY Month;

---------------------------------------------------------

---------------------------------------------------------
-- 8. Revenue by Tests

SELECT
Test_Name,
SUM(Revenue_NGN) AS Test_Revenue
FROM laboratory_sales_data
GROUP BY Test_Name
ORDER BY Test_Revenue DESC;

---------------------------------------------------------

---------------------------------------------------------
-- Key Insights
--
---------------------------------------------------------
-- 1. Generated total rvenue of NGN 5.6M from laboratory transactions.
-- 2. Identified the highest-demand diagnostic tests.
-- 3. Determined the tests contributing the highest revenue.
-- 4. Evaluated branch performance and monthly revenue patterns.

---------------------------------------------------------
