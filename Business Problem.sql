CREATE DATABASE Online_retail;

USE Online_retail;

CREATE TABLE sales (
    InvoiceNo    VARCHAR(20),          
    StockCode    VARCHAR(20),          
    Description  TEXT,                 
    Quantity     INT,                  
    InvoiceDate  DATETIME,             
    UnitPrice    DECIMAL(10,2),        
    CustomerID   INT,                  
    Country      VARCHAR(50),          
    Date         DATE,                 
    Time         TIME,                 
    Year         INT,                  
    Month        INT,                  
    MonthName    VARCHAR(15),          
    Revenue      DECIMAL(12,2),        
    IsCancelled  CHAR(5)               
);

-- SALES
-- What is the total Revenue
SELECT SUM(REVENUE) as 'Total Revenue' 
FROM sales;

-- How many Orders were placed
SELECT COUNT(*) as "Total orders placed"
FROM sales;  

-- How does revenue change by month
SELECT Year, MonthName, SUM(Revenue) AS 'Monthly Revenue'
FROM sales
GROUP BY Year, MonthName
ORDER BY Year,
MIN(Month);

-- What is the average order value?
-- What is the average order value?
SELECT 
    SUM(Revenue) / COUNT(DISTINCT InvoiceNo) AS "Average Order Value"
FROM sales
WHERE IsCancelled = 0;


-- Who are the top customers?
SELECT 
    CustomerID,
    SUM(Revenue) AS "Total Revenue"
FROM sales
WHERE IsCancelled = 0
  AND CustomerID != -1
GROUP BY CustomerID
ORDER BY "Total Revenue" DESC
LIMIT 10;


-- How much revenue does each customer generate?
SELECT 
    CustomerID,
    SUM(Revenue) AS "Customer Revenue"
FROM sales
WHERE IsCancelled = 0
  AND CustomerID != -1
GROUP BY CustomerID
ORDER BY "Customer Revenue" DESC;


-- Which customers purchase most frequently?
SELECT 
    CustomerID,
    COUNT(DISTINCT InvoiceNo) AS "Total Orders"
FROM sales
WHERE IsCancelled = 0
  AND CustomerID != -1
GROUP BY CustomerID
ORDER BY "Total Orders" DESC
LIMIT 10;


-- Which products generate the most revenue?
SELECT 
    StockCode,
    Description,
    SUM(Revenue) AS "Total Revenue"
FROM sales
WHERE IsCancelled = 0
GROUP BY StockCode, Description
ORDER BY "Total Revenue" DESC
LIMIT 10;


-- Which products sell the most units?
SELECT 
    StockCode,
    Description,
    SUM(Quantity) AS "Total Units Sold"
FROM sales
WHERE IsCancelled = 0
GROUP BY StockCode, Description
ORDER BY "Total Units Sold" DESC
LIMIT 10;


-- Which countries generate the most revenue?
SELECT 
    Country,
    SUM(Revenue) AS "Total Revenue"
FROM sales
WHERE IsCancelled = 0
GROUP BY Country
ORDER BY "Total Revenue" DESC;


-- Which countries have the most orders?
SELECT 
    Country,
    COUNT(DISTINCT InvoiceNo) AS "Total Orders"
FROM sales
WHERE IsCancelled = 0
GROUP BY Country
ORDER BY "Total Orders" DESC;