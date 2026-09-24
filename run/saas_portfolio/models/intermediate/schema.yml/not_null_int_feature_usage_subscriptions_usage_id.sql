
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_04074bf2e69ca5fb77a86671b4e0262a_12540]
   as 
    
    
    



select usage_id
from "ravenstack_saas"."dbo"."int_feature_usage_subscriptions"
where usage_id is null



  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_04074bf2e69ca5fb77a86671b4e0262a_12540]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_04074bf2e69ca5fb77a86671b4e0262a_12540]
  ;')