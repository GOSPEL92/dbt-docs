
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_ab1e3b5e90769ce0d778e13cba1b0acc_2234]
   as 
    
    
    



select ticket_count
from "ravenstack_saas"."dbo"."fct_customer_health"
where ticket_count is null



  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_ab1e3b5e90769ce0d778e13cba1b0acc_2234]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_ab1e3b5e90769ce0d778e13cba1b0acc_2234]
  ;')