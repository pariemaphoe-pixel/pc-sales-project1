
CREATE PROCEDURE dim_stg_shop_details
AS

BEGIN
---droping table and creating the one with id column
DROP TABLE [raw_pc_data].[dbo].[dim_shop_details]
CREATE TABLE [raw_pc_data].[dbo].[dim_shop_details](
    [Shop_Details_Id] int identity(1,1) primary key,
	[Shop_Name] [nvarchar](50) NOT NULL,
	[Shop_Age] [nvarchar](50) NOT NULL
);

---inseting values in our table from source table
INSERT INTO [raw_pc_data].[dbo].[dim_shop_details](
[Shop_Name],[Shop_Age])
SELECT DISTINCT [Shop_Name],[Shop_Age]
FROM [raw_pc_data].[dbo].[pc_data]
END;


