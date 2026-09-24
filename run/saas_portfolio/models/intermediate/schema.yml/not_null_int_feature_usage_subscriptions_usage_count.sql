
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_56e7711b2d960ef8f31f9c79d695f1d1_5150]
   as 
    
    
    



select usage_count
from "ravenstack_saas"."dbo"."int_feature_usage_subscriptions"
where usage_count is null



  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_56e7711b2d960ef8f31f9c79d695f1d1_5150]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_56e7711b2d960ef8f31f9c79d695f1d1_5150]
  ;')