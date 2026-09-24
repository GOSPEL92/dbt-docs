
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_322e7cb8d80e1d06062afde183e8e49e_1779]
   as 
    
    
    



select account_id
from "ravenstack_saas"."dbo"."fct_subscriptions"
where account_id is null



  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_322e7cb8d80e1d06062afde183e8e49e_1779]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_322e7cb8d80e1d06062afde183e8e49e_1779]
  ;')