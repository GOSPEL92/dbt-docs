
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_8aad77d98a2421c90c1ec1066edfe87e_10226]
   as 
    
    
    



select industry
from "ravenstack_saas"."dbo"."fct_customer_health"
where industry is null



  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_8aad77d98a2421c90c1ec1066edfe87e_10226]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_8aad77d98a2421c90c1ec1066edfe87e_10226]
  ;')