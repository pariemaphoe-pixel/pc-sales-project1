
---droping table with no id creating a table with an id
DROP TABLE [raw_pc_data].[dbo].[fact_pc_sales]
CREATE TABLE [raw_pc_data].[dbo].[fact_pc_sales](
    [Sales_Id] INT identity(1,1) primary key,
	[Channel_Id] INT REFERENCES [dbo].[dim_channel],[Date_Id] INT REFERENCES [dbo].[dim_date],
	[Location_Id] INT REFERENCES [dbo].[dim_location],[Payment_Method_id] INT REFERENCES [dbo].[dim_payment_method],
	[Pc_Specs_Id] INT REFERENCES [dbo].[dim_pc_specs],
	[Customer_Id] INT REFERENCES [dbo].[dim_customer_details] ,[Priority_Id] INT REFERENCES [dbo].[dim_priority] ,
	[Shop_Details_Id] INT REFERENCES [dbo].[dim_shop_details],
	[Sales_Person_Id] INT REFERENCES [dbo].[dim_sales_person] ,
	[Sale_Price] [int] NOT NULL,
	[Cost_Price] [int] NOT NULL,
	[Discount_Amount] [int] NOT NULL,
	[Cost_of_Repairs] [nvarchar](50) NOT NULL,
	[Total_Sales_per_Employee] [int] NOT NULL,
	[PC_Market_Price] [int] NOT NULL,
	[Credit_Score] [int] NOT NULL,
	[Finance_Amount] [nvarchar](50) NOT NULL
);

---inserting values into our table

INSERT INTO [raw_pc_data].[dbo].[fact_pc_sales](
[Channel_Id] ,[Date_Id] ,[Location_Id] ,[Payment_Method_id] ,
[Pc_Specs_Id] ,
[Customer_Id] ,[Priority_Id] ,[Sales_Person_Id] ,[Shop_Details_Id] ,
[Sale_Price],[Cost_Price] ,[Discount_Amount],
[Cost_of_Repairs],[Total_Sales_per_Employee],
[PC_Market_Price],[Credit_Score],[Finance_Amount])
SELECT DISTINCT NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,
[Sale_Price],[Cost_Price] ,[Discount_Amount],
[Cost_of_Repairs],[Total_Sales_per_Employee],
[PC_Market_Price],[Credit_Score],[Finance_Amount]
FROM [raw_pc_data].[dbo].[pc_data]
;

---SELECT * FROM [raw_pc_data].[dbo].[fact_pc_sales]