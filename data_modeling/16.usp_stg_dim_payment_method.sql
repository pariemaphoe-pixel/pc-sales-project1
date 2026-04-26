
CREATE PROCEDURE dim_stg_payment_method
AS

BEGIN
---dropping theprevious table with no id and creating a new one with an id
DROP TABLE [raw_pc_data].[dbo].[dim_payment_method]
CREATE TABLE [raw_pc_data].[dbo].[dim_payment_method](
    [Payment_Method_id] int identity(1,1) primary key,
	[Payment_Method] [nvarchar](50) NOT NULL
) ;

---inserting values from our source table
INSERT INTO [raw_pc_data].[dbo].[dim_payment_method](
            [Payment_Method])
SELECT DISTINCT [Payment_Method]
FROM [raw_pc_data].[dbo].[pc_data]
END;


