
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_f1e23725f38e1005fdd7a268ac8db548_2652]
   as 
    
    
    



select churn_event_id
from "ravenstack_saas"."dbo"."stg_ravenstack_churn_events"
where churn_event_id is null



  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_f1e23725f38e1005fdd7a268ac8db548_2652]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_f1e23725f38e1005fdd7a268ac8db548_2652]
  ;')