-- ======================================================
-- SQL PROJECT QUESTIONS
-- Dataset: PC Sales
-- ======================================================
CREATE DATABASE PC_DB;

SELECT *
FROM dbo.PC_DATA;

-- BASIC QUESTIONS


-- 1. Count the total number of sales records.
SELECT COUNT(*)AS Number_of_salesrecods
FROM dbo.PC_DATA;
-- 2. Count the number of sales per Continent.
SELECT Continent,COUNT(*)
FROM dbo.PC_DATA
GROUP BY Continent ;

-- 3. Count the number of sales per Country or State.
SELECT Country_or_State,COUNT(*)
FROM dbo.PC_DATA
GROUP BY Country_or_State ;
-- 4. List all distinct Shop Name values.
SELECT DISTINCT(Shop_Name)
FROM dbo.PC_DATA;

-- 5. Find the average Sale Price.
SELECT AVG(CAST(Sale_Price AS INT))AS AVG_SALES
FROM dbo.PC_DATA; 

-- 6. Find the highest and lowest Sale Price.
SELECT MAX(CAST(Sale_Price AS INT))AS MAX_SALESPRICE,MIN(CAST(Sale_Price AS INT))AS MIN_SALESPRICE
FROM dbo.PC_DATA; 

-- 7. Count the number of sales by Payment Method.
SELECT Payment_Method,COUNT(*)AS Num_sales_paymentmethod
FROM dbo.PC_DATA
GROUP BY Payment_Method ; 

-- 8. Count the number of sales by Channel (Online vs Offline).
SELECT Channel,COUNT(*)AS byChannel_sales
FROM dbo.PC_DATA
 GROUP BY Channel;
-- 9. Count the number of sales by Priority level.
SELECT Priority,COUNT(*)AS byChannel_sales
FROM dbo.PC_DATA
 GROUP BY Priority;
-- 10. Count the number of distinct PC Make values.
SELECT COUNT(DISTINCT PC_Make) 
FROM dbo.PC_DATA;
