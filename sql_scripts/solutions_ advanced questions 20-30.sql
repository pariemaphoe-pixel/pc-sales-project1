-- ADVANCED QUESTIONS

-- 21. Calculate profit per Shop Name.
SELECT Shop_Name,SUM(cast(Sale_Price as int)-(cast (Cost_Price as int)))as profit_per_shop
FROM dbo.PC_DATA
GROUP BY Shop_Name;

-- 22. Calculate profit margin per sale ((Sale Price - Cost Price) / Sale Price).
SELECT Sale_Price,Cost_Price,((cast(Sale_Price as float)-cast (Cost_Price as float))/cast(Sale_Price as float))as profit_margin
FROM dbo.PC_DATA;

-- 23. Determine which Continent has the highest total revenue.
SELECT TOP 1 Continent,SUM(cast(Sale_Price as int))as highest_total_revenue
FROM dbo.PC_DATA
GROUP BY Continent
ORDER BY highest_total_revenue DESC;
-- 24. Calculate average Sale Price per RAM size.
SELECT RAM,AVG(cast(Sale_Price as int))as Avg_ram_sale_price
FROM dbo.PC_DATA
GROUP  BY RAM;

-- 25. Find the PC Model with the highest Sale Price.select * from dbo.PC_DATA
SELECT TOP 1 PC_Model,cast(Sale_Price as int)as max_sale_price
FROM dbo.PC_DATA
ORDER BY max_sale_price DESC;
-- 26. Calculate the average number of days between Purchase Date and Ship Date.
SELECT AVG(DATEDIFF(day,try_convert(date,Purchase_Date) ,try_convert(date,Ship_Date )))as avgshipdays
FROM dbo.PC_DATA;


-- 27. Determine which Sales Person Department generates the highest revenue.
SELECT Sales_Person_Department,SUM(cast(Sale_Price as int))as salesperson_dep_maxrevenue
FROM dbo.PC_DATA
GROUP BY Sales_Person_Department
ORDER BY salesperson_dep_maxrevenue DESC;

-- 28. Calculate total revenue per Storage Capacity.
SELECT Storage_Capacity,SUM(cast(Sale_Price as int))as total_revenue_per_storagecapacity
FROM dbo.PC_DATA
GROUP BY Storage_Capacity
ORDER BY total_revenue_per_storagecapacity  DESC;


-- 29. Identify sales where Sale Price is lower than PC Market Price.

SELECT *
FROM dbo.PC_DATA
WHERE Cast(Sale_Price as int)<(SELECT(Cast(PC_Market_Price as int)));

-- 30. Rank Sales Person Name by Total Sales per Employee using a window function.
SELECT Sales_Person_Name,Total_Sales_per_Employee,
DENSE_RANK() OVER(ORDER BY Total_Sales_per_Employee DESC)
FROM dbo.PC_DATA
GROUP BY Sales_Person_Name,Total_Sales_per_Employee;

