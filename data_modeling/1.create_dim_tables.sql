-----creating our staging database and database for cleaned data

CREATE DATABASE raw_pc_data
CREATE DATABASE cleaned_pc_data;

---creating tables dim tables from ERD

SELECT DISTINCT [Continent],	
[Country_or_State],[Province_or_City]
INTO dim_location
FROM  [raw_pc_data].[dbo].[pc_data];

---creating dim_customer_details table

SELECT DISTINCT [Customer_Name],	
[Customer_Surname],[Customer_Contact_Number],[Customer_Email_Address]
INTO dim_customer_details
FROM  [raw_pc_data].[dbo].[pc_data];

---creating dim_pc_specs table

SELECT DISTINCT [Storage_Type],
[RAM],[Storage_Capacity],[PC_Make],[PC_Model]
INTO dim_pc_specs
FROM  [raw_pc_data].[dbo].[pc_data];

---creating dim_shop_details table

SELECT DISTINCT [Shop_Name],
[Shop_Age]
INTO dim_shop_details
FROM  [raw_pc_data].[dbo].[pc_data];

---creating dim_channel table

SELECT DISTINCT [Channel]
INTO dim_channel
FROM  [raw_pc_data].[dbo].[pc_data];
---creating dim_priority table

SELECT DISTINCT [Priority]
INTO dim_priority
FROM  [raw_pc_data].[dbo].[pc_data];

---creating dim_sales_person

SELECT DISTINCT [Sales_Person_Name]	
[Sales_Person_Department]
INTO dim_sales_person
FROM  [raw_pc_data].[dbo].[pc_data];

---creating dim_payment_method

SELECT DISTINCT [Payment_Method]
INTO dim_payment_method
FROM  [raw_pc_data].[dbo].[pc_data];

---creating dim_date

SELECT [Ship_Date],[Purchase_Date]
INTO dim_date
FROM [raw_pc_data].[dbo].[pc_data];

---creating fact_pc_sales

SELECT [Sale_Price]	,[Cost_Price],[Discount_Amount]
,[Cost_of_Repairs],[Total_Sales_per_Employee],
[PC_Market_Price],[Credit_Score],[Finance_Amount]
INTO fact_pc_sales
FROM [raw_pc_data].[dbo].[pc_data];





