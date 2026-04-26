
CREATE PROCEDURE dim_stg_date
AS

BEGIN
---creating dim_date_table
DROP TABLE IF EXISTS [raw_pc_data].[dbo].[dim_date];
CREATE TABLE [dbo].[dim_date](
	[Date_Id] [int] IDENTITY(1,1) NOT NULL,
	[Ship_Date] [nvarchar](50) NOT NULL,
	[Purchase_Date] [datetime2](7) NOT NULL,
	);

	---inserting values into the table
	INSERT INTO [raw_pc_data].[dbo].[dim_date](
	[Purchase_Date],[Ship_Date])
	SELECT [Purchase_Date],[Ship_Date]
	FROM [raw_pc_data].[dbo].[pc_data]
	END;


