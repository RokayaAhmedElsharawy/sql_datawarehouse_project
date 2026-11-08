
CREATE OR ALTER PROCEDURE bronze.load_bronzedata AS
BEGIN 
DECLARE @start_time DATETIME ,@end_time DATETIME ;
 BEGIN TRY
print '===================================='
PRINT 'LOADING BRONZE LAYER DATA '
print '===================================='

TRUNCATE TABLE bronze.crm_cust_info
set @start_time=GETDATE();
Bulk insert bronze.crm_cust_info from 'C:\Users\hp\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\cust_info.csv'
WITH (
FIRSTROW =2,FIELDTERMINATOR=',' ,TABLOCK
);
set @end_time=GETDATE();
print '>> load Duration' + cast(DATEDIFF (second,@start_time,@end_time) as nvarchar)
SELECT COUNT(*) FROM bronze.crm_cust_info

TRUNCATE TABLE bronze.crm_prd_info
set @start_time=GETDATE();
Bulk insert bronze.crm_prd_info from 'C:\Users\hp\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\prd_info.csv'
WITH (
FIRSTROW =2,FIELDTERMINATOR=',' ,TABLOCK
);
set @end_time=GETDATE();
print '>> load Duration' + cast(DATEDIFF (second,@start_time,@end_time) as nvarchar)
SELECT COUNT(*) FROM bronze.crm_prd_info


TRUNCATE TABLE bronze.crm_sales_info
set @start_time=GETDATE();
Bulk insert bronze.crm_sales_info from 'C:\Users\hp\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\sales_details.csv'
WITH (
FIRSTROW =2,FIELDTERMINATOR=',' ,TABLOCK
);
set @end_time=GETDATE();
print '>> load Duration' + cast(DATEDIFF (second,@start_time,@end_time) as nvarchar)
SELECT COUNT(*) FROM bronze.crm_sales_info

TRUNCATE TABLE bronze.erp_cust_info
set @start_time=GETDATE();
Bulk insert bronze.erp_cust_info from 'C:\Users\hp\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\cust_info.csv'
WITH (
FIRSTROW =2,FIELDTERMINATOR=',' ,TABLOCK
);
set @end_time=GETDATE();
print '>> load Duration' + cast(DATEDIFF (second,@start_time,@end_time) as nvarchar)
SELECT COUNT(*) FROM bronze.erp_cust_info

TRUNCATE TABLE bronze.erp_customer_locations
set @start_time=GETDATE();
Bulk insert bronze.erp_customer_locations from 'C:\Users\hp\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\customer_locations.csv'
WITH (
FIRSTROW =2,FIELDTERMINATOR=',' ,TABLOCK
);
set @end_time=GETDATE();
print '>> load Duration' + cast(DATEDIFF (second,@start_time,@end_time) as nvarchar)
SELECT COUNT(*) FROM bronze.erp_customer_locations


TRUNCATE TABLE bronze.erp_product_CAT
set @start_time=GETDATE();
Bulk insert bronze.erp_product_CAT from 'C:\Users\hp\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\product_category.csv'
WITH (
FIRSTROW =2,FIELDTERMINATOR=',' ,TABLOCK
);
set @end_time=GETDATE();
print '>> load Duration' + cast(DATEDIFF (second,@start_time,@end_time) as nvarchar)
SELECT COUNT(*) FROM bronze.erp_product_CAT
END TRY
 BEGIN CATCH
        PRINT 'ERROR_MESSAGE: ' + ERROR_MESSAGE();
        PRINT 'ERROR_NUMBER: ' + CAST(ERROR_NUMBER() AS NVARCHAR(20));
        PRINT 'ERROR_STATE: ' + CAST(ERROR_STATE() AS NVARCHAR(20));
    END CATCH
END
