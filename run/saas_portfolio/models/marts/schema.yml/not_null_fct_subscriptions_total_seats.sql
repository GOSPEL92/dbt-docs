
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_89c076586cf79fb91ce906665e9f0d63_2934]
   as 
    
    
    



select total_seats
from "ravenstack_saas"."dbo"."fct_subscriptions"
where total_seats is null



  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_89c076586cf79fb91ce906665e9f0d63_2934]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_89c076586cf79fb91ce906665e9f0d63_2934]
  ;')