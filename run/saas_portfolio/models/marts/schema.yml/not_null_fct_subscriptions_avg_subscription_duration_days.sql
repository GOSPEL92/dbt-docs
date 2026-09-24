
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_1914bc1e326f1ba5b8f7cdc4a53a8e43_9835]
   as 
    
    
    



select avg_subscription_duration_days
from "ravenstack_saas"."dbo"."fct_subscriptions"
where avg_subscription_duration_days is null



  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_1914bc1e326f1ba5b8f7cdc4a53a8e43_9835]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_1914bc1e326f1ba5b8f7cdc4a53a8e43_9835]
  ;')