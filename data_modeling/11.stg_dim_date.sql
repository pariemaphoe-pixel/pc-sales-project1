---creating our table with Id
DROP TABLE [raw_pc_data].[dbo].[dim_date]
CREATE TABLE [raw_pc_data].[dbo].[dim_date](
    [Date_Id] int identity(1,1) primary key,
	[Ship_Date] [nvarchar](50) NOT NULL,
	[Purchase_Date] [datetime2](7) NOT NULL
);


---inserting values in our table
INSERT INTO [raw_pc_data].[dbo].[dim_date](
[Ship_Date],[Purchase_Date])
SELECT DISTINCT [Ship_Date],[Purchase_Date]
FROM [raw_pc_data].[dbo].[pc_data];

---select * from [raw_pc_data].[dbo].[dim_date]

