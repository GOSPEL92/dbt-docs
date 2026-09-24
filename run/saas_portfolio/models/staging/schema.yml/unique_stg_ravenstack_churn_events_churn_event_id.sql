
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_29d3552010e1b0f27a3b270b098d90e8_11597]
   as 
    
    
    

select
    churn_event_id as unique_field,
    count(*) as n_records

from "ravenstack_saas"."dbo"."stg_ravenstack_churn_events"
where churn_event_id is not null
group by churn_event_id
having count(*) > 1



  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_29d3552010e1b0f27a3b270b098d90e8_11597]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_29d3552010e1b0f27a3b270b098d90e8_11597]
  ;')