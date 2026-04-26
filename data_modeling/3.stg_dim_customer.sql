

DROP TABLE [raw_pc_data].[dbo].[dim_customer_details];

CREATE TABLE [raw_pc_data].[dbo].[dim_customer_details](
    [Customer_Id] int identity(1,1) primary key,
	[Customer_Name] [nvarchar](50) NOT NULL,
	[Customer_Surname] [nvarchar](50) NOT NULL,
	[Customer_Contact_Number] [nvarchar](50) NOT NULL,
	[Customer_Email_Address] [nvarchar](50) NOT NULL
) ;
---SELECT * FROM [raw_pc_data].[dbo].[dim_customer_details]
INSERT INTO [raw_pc_data].[dbo].[dim_customer_details](
	[Customer_Name] ,
	[Customer_Surname],
	[Customer_Contact_Number] ,
	[Customer_Email_Address] )
	SELECT DISTINCT[Customer_Name] ,
	[Customer_Surname],
	[Customer_Contact_Number] ,
	[Customer_Email_Address]
FROM [raw_pc_data].[dbo].[pc_data];
----SELECT * FROM [raw_pc_data].[dbo].[dim_customer_details]


