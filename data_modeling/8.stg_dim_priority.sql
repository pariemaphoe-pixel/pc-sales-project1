---droping table with no id and creating a table with id columns
DROP TABLE [raw_pc_data].[dbo].[dim_priority];
CREATE TABLE [raw_pc_data].[dbo].[dim_priority](
    [Priority_Id] int identity(1,1) primary key,
	[Priority] [nvarchar](50) NOT NULL
);

---inserting values in our table from the source table

INSERT INTO [raw_pc_data].[dbo].[dim_priority](
[Priority])
SELECT DISTINCT [Priority]
FROM  [raw_pc_data].[dbo].[pc_data];


