

CREATE VIEW vw_pc_sales_details

---view our dim and fact table
AS
SELECT * FROM [dbo].[dim_channel];
--SELECT * FROM [dbo].[dim_date];
--SELECT * FROM [dbo].[dim_customer_details];
--SELECT *FROM [dbo].[dim_location];
--SELECT * FROM [dbo].[dim_payment_method];
--SELECT * FROM [dbo].[dim_pc_specs];
--SELECT * FROM [dbo].[dim_priority];
--SELECT * FROM [dbo].[dim_sales_person];
--SELECT * FROM [dbo].[dim_shop_details];
--SELECT * FROM [dbo].[fact_pc_sales];