
CREATE PROCEDURE dim_stg_pc_specs
AS

BEGIN
---droping table with no id and creating a table with id column

DROP TABLE [raw_pc_data].[dbo].[dim_pc_specs];
CREATE TABLE [raw_pc_data].[dbo].[dim_pc_specs](
    [Pc_Specs_Id] int identity(1,1) primary key, 
	[Storage_Type] [nvarchar](50) NOT NULL,
	[RAM] [nvarchar](50) NOT NULL,
	[Storage_Capacity] [nvarchar](50) NOT NULL,
	[PC_Make] [nvarchar](50) NOT NULL,
	[PC_Model] [nvarchar](50) NOT NULL
) 
 
---inserting values into our table from the source table
INSERT INTO [raw_pc_data].[dbo].[dim_pc_specs](
[Storage_Type],[RAM],[Storage_Capacity],
[PC_Make],[PC_Model])
SELECT DISTINCT [Storage_Type],[RAM],[Storage_Capacity],
[PC_Make],[PC_Model]
FROM [raw_pc_data].[dbo].[pc_data]
END;



