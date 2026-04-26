
CREATE PROCEDURE dim_stg_channel
AS

BEGIN
DROP TABLE [raw_pc_data].[dbo].[dim_channel];
CREATE TABLE [raw_pc_data].[dbo].[dim_channel](
    [Channel_id] int identity(1,1) primary key,
	[Channel] [nvarchar](50) NOT NULL
);

---inserting the values from our source table
INSERT INTO [raw_pc_data].[dbo].[dim_channel](
[Channel] )
SELECT DISTINCT [Channel]
FROM [dbo].[pc_data]
END;
---select * from [raw_pc_data].[dbo].[dim_channel]
