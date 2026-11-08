CREATE TABLE silver.crm_cust_info(
	[cst_id] [int] ,
	[cst_key] [nvarchar](60) ,
	[cst_firstname] [nvarchar](60) ,
	[cst_lastname] [nvarchar](60) ,
	[cst_maritalstatus] [nvarchar](60) ,
	[cst_gender] [nvarchar](60) ,
	[cst_create_date] [date] ,
	dwh_created_date DATETIME2 DEFAULT GETDATE()
);
GO
  
CREATE TABLE silver.[crm_prd_info](
	[prd_id] [int] NULL,
	[prd_key] [nvarchar](60) ,
	[prd_nm] [nvarchar](60) ,
	[prd_cost] [int] ,
	[prd_line] [nvarchar](60) ,
	[prd_start_date] [date] ,
	[prd_end_date] [date] ,
	dwh_created_date DATETIME2 DEFAULT GETDATE()
);
GO

CREATE TABLE silver.[crm_sales_info](
	[sls_ord_num] [varchar](50) ,
	[sls_prd_key] [varchar](50) ,
	[sls_cust_id] [int] ,
	[sls_order_dt] [int] ,
	[sls_ship_dt] [int] ,
	[sls_due_dt] [int] ,
	[sls_sales] [decimal](18, 2) ,
	[sls_quantity] [int] ,
	[sls_price] [decimal](18, 2) ,
	dwh_created_date DATETIME2 DEFAULT GETDATE()
);
GO

CREATE TABLE silver.[erp_cust_info](
	[cust_id] [varchar](50) ,
	[BDATE] [date] ,
	[gender] [varchar](50) ,
	dwh_created_date DATETIME2 DEFAULT GETDATE()
);
GO

CREATE TABLE silver.[erp_customer_locations](
	[cust_id] [varchar](50) ,
	[country] [varchar](50) ,
	dwh_created_date DATETIME2 DEFAULT GETDATE()
);
GO

CREATE TABLE silver.[erp_product_CAT](
	[product_category_id] [varchar](50) ,
	[category] [varchar](50) ,
	[sub_cat] [varchar](50) ,
	[is_maintenance] [varchar](50) ,
	dwh_created_date DATETIME2 DEFAULT GETDATE() 
);
GO


