USE retail_db;

-- Check total rows
SELECT COUNT(*) AS total_rows FROM online_retail;

-- Preview first 10 rows
SELECT * FROM online_retail LIMIT 10;

SELECT SUM(Quantity * UnitPrice) AS Total_Revenue
FROM online_retail;

SELECT 
MONTH(InvoiceDate) AS Month,
SUM(Quantity * UnitPrice) AS Monthly_Revenue
FROM online_retail
GROUP BY Month
ORDER BY Month;

SELECT Description, SUM(Quantity) AS TotalSold
FROM online_retail
GROUP BY Description
ORDER BY TotalSold DESC
LIMIT 10;
