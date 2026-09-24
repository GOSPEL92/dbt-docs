
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_7093e52cfbd363f4972fc7eb1b6b2022_7387]
   as 
    
    
    



select total_mrr
from "ravenstack_saas"."dbo"."fct_subscriptions"
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
    [dbo].[testview_7093e52cfbd363f4972fc7eb1b6b2022_7387]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_7093e52cfbd363f4972fc7eb1b6b2022_7387]
  ;')