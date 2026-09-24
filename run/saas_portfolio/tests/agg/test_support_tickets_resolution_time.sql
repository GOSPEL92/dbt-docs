
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_316fafe2f8c29899accbd61b97b07326_8931]
   as 
    SELECT *
FROM "ravenstack_saas"."dbo"."int_support_tickets_accounts"
WHERE resolution_time_hours < 0
  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_316fafe2f8c29899accbd61b97b07326_8931]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_316fafe2f8c29899accbd61b97b07326_8931]
  ;')