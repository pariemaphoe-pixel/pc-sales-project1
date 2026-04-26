---dropping out previous table with no id and creating a new table with an id

DROP TABLE [raw_pc_data].[dbo].[dim_location]
CREATE TABLE [raw_pc_data].[dbo].[dim_location](
    [Location_id] int identity(1,1) primary key,
	[Continent] [nvarchar](50) NOT NULL,
	[Country_or_State] [nvarchar](50) NOT NULL,
	[Province_or_City] [nvarchar](100) NOT NULL
) ;

---inserting values in our table from our source table

INSERT INTO [raw_pc_data].[dbo].[dim_location](
[Continent] ,[Country_or_State],
[Province_or_City])
SELECT DISTINCT [Continent] ,[Country_or_State],
[Province_or_City]
FROM [raw_pc_data].[dbo].[pc_data];


