
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_6f918d7d7647073fd1f413cbac98dd8b_8981]
   as 
    
    
    



select feature_name
from "ravenstack_saas"."dbo"."int_feature_usage_subscriptions_agg"
where feature_name is null



  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_6f918d7d7647073fd1f413cbac98dd8b_8981]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_6f918d7d7647073fd1f413cbac98dd8b_8981]
  ;')