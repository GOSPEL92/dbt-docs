
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_021c5c243c8d2af551312592ccdb9c3c_3450]
   as 
    
    
    



select subscription_count
from "ravenstack_saas"."dbo"."fct_account_health"
where subscription_count is null



  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_021c5c243c8d2af551312592ccdb9c3c_3450]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_021c5c243c8d2af551312592ccdb9c3c_3450]
  ;')