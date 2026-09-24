
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_0f52216a2b0ed41830f1a72246ce72b0_3629]
   as 
    
    
    



select subscription_duration_days
from "ravenstack_saas"."dbo"."fct_subscriptions"
where subscription_duration_days is null



  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_0f52216a2b0ed41830f1a72246ce72b0_3629]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_0f52216a2b0ed41830f1a72246ce72b0_3629]
  ;')