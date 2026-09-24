
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_c2ce452d1c452e6937ca941b331f18d1_13668]
   as 
    
    
    



select churned_subscriptions
from "ravenstack_saas"."dbo"."fct_customer_health"
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
    [dbo].[testview_c2ce452d1c452e6937ca941b331f18d1_13668]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_c2ce452d1c452e6937ca941b331f18d1_13668]
  ;')