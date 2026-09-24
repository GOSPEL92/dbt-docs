
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_704d86a604eff94ff03c3530e649d281_18603]
   as 
    
    
    



select total_mrr
from "ravenstack_saas"."dbo"."fct_customer_health"
where total_mrr is null



  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_704d86a604eff94ff03c3530e649d281_18603]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_704d86a604eff94ff03c3530e649d281_18603]
  ;')