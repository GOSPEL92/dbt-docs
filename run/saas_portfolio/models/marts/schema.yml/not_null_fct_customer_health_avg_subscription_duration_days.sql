
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_61b6659f21af7151f46f12766c572286_9581]
   as 
    
    
    



select avg_subscription_duration_days
from "ravenstack_saas"."dbo"."fct_customer_health"
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
    [dbo].[testview_61b6659f21af7151f46f12766c572286_9581]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_61b6659f21af7151f46f12766c572286_9581]
  ;')