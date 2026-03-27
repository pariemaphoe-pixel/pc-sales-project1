-- INTERMEDIATE QUESTIONS

-- 11. Calculate total revenue (SUM of Sale Price).
SELECT SUM(cast(Sale_Price as int))AS SUM_OFSALES
FROM dbo.PC_DATA;

-- Find PCs above average price
SELECT *
FROM dbo.PC_DATA
WHERE Sale_Price > (SELECT AVG(cast(Sale_Price as int)) FROM dbo.PC_DATA);
--- Number of sales per PC_MAKE
SELECT PC_MAKE,COUNT(Sale_Price)AS Number_of_sales_per_pc_make
FROM dbo.PC_DATA
GROUP BY PC_MAKE;
---- Find pc_make bove average per pc make
SELECT PC_Make,AVG(cast(Sale_Price as int)) as avgsale_price
FROM dbo.PC_DATA
GROUP BY PC_Make
HAVING AVG(cast(Sale_Price as int))  > (Select AVG(cast(Sale_Price as int)) FROM dbo.PC_DATA);

---% Contribution of pc make.SELECT * FROM dbo.PC_DATA
SELECT SUM(cast(Sale_Price as int))
FROM dbo.PC_DATA;

SELECT PC_Make,SUM(cast(Sale_Price as int))AS sum_per_pc_make
FROM dbo.PC_DATA
GROUP BY PC_Make;

SELECT PC_Make,SUM(cast(Sale_Price as float)),SUM(cast(Sale_Price as float))*100/(SELECT SUM(cast(Sale_Price as float))
FROM dbo.PC_DATA)AS Percentage_Contribution
FROM dbo.PC_DATA
GROUP BY PC_Make
ORDER BY Percentage_Contribution DESC;



-- 12. Calculate total profit (SUM of Sale Price - Cost Price).
SELECT SUM(cast(Sale_Price as int)) - SUM(cast(Cost_Price as int))AS Total_Profit
FROM dbo.PC_DATA
;

-- 13. Find the average Discount Amount.
SELECT   AVG(Discount_Amount)
FROM dbo.PC_DATA;

-- 14. Calculate total Finance Amount issued.
SELECT SUM(Convert(int,Finance_Amount))as Total_Finamount
FROM dbo.PC_DATA;

-- 15. Find total revenue per PC Make.
SELECT PC_Make,SUM(cast(Sale_Price as int)) AS Rev_Per_PC_MAKE
FROM dbo.PC_DATA
GROUP BY PC_Make;
-- 16. Find average Sale Price per Storage Type.
SELECT Storage_Type,AVG(cast(Sale_Price as int)) as avg_saleprice
FROM dbo.PC_DATA
GROUP BY Storage_Type;

-- 17. Calculate total revenue per Shop Name.select * from dbo.PC_DATA
SELECT Shop_Name,SUM(cast(Sale_Price as int)) AS REV_PER_SHOP_NAME
FROM dbo.PC_DATA
GROUP BY  Shop_Name;

-- 18. Calculate total revenue per Sales Person Name.
SELECT Sales_Person_Name,SUM(cast(Sale_Price as int)) AS REV_PER_SALES_PERSON_NAME
FROM dbo.PC_DATA
GROUP BY Sales_Person_Name;
-- 19. Find average Credit Score per Payment Method.
SELECT Payment_Method,AVG(CONVERT(int ,Credit_Score)) as avg_credit_score
FROM dbo.PC_DATA
GROUP BY Payment_Method;

-- 20. Calculate total Cost of Repairs per Sales Person Department.select * from dbo.PC_DATA
SELECT Sales_Person_Department,SUM(cast(Cost_of_Repairs as int))AS total_cost_of_returns
FROM dbo.PC_DATA
GROUP BY Sales_Person_Department;