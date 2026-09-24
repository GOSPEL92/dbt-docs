
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_f51ca37ba9b7e620ce8367451cced154_9573]
   as 
    
    
    



select feature_name
from "ravenstack_saas"."dbo"."int_feature_usage_subscriptions"
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
    [dbo].[testview_f51ca37ba9b7e620ce8367451cced154_9573]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_f51ca37ba9b7e620ce8367451cced154_9573]
  ;')