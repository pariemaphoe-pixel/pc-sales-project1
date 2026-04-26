CREATE PROCEDURE dim_stg_sales_person
AS

BEGIN
--droping the table with no id and creating a new one with an id
DROP TABLE [raw_pc_data].[dbo].[dim_sales_person];
CREATE TABLE [raw_pc_data].[dbo].[dim_sales_person](
    [Sales_Person_Id] int identity(1,1) primary key,
	[Sales_Person_Name] nvarchar(50),[Sales_Person_Department] nvarchar (150)
	
);

---inserting values in our table from the source table

INSERT INTO [raw_pc_data].[dbo].[dim_sales_person](
[Sales_Person_Department],[Sales_Person_Name])
SELECT DISTINCT [Sales_Person_Department],[Sales_Person_Name]
FROM  [raw_pc_data].[dbo].[pc_data]
END;

---select * from [raw_pc_data].[dbo].[dim_sales_person]
