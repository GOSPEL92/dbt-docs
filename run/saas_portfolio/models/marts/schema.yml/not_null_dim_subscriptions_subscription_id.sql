
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_18fa6b2eea3bc984145ae20dd0818763_4803]
   as 
    
    
    



select subscription_id
from "ravenstack_saas"."dbo"."dim_subscriptions"
where subscription_id is null



  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_18fa6b2eea3bc984145ae20dd0818763_4803]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_18fa6b2eea3bc984145ae20dd0818763_4803]
  ;')