
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_7ac3a326c849671801c9790a3b9d6e97_4027]
   as 
    
    
    



select churned_subscriptions
from "ravenstack_saas"."dbo"."fct_subscriptions"
where churned_subscriptions is null



  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_7ac3a326c849671801c9790a3b9d6e97_4027]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_7ac3a326c849671801c9790a3b9d6e97_4027]
  ;')