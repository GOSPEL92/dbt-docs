
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_8ed4bb5da6159b35d14acc9e740389f4_15345]
   as 
    
    
    



select ticket_count
from "ravenstack_saas"."dbo"."fct_support_tickets"
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
    [dbo].[testview_8ed4bb5da6159b35d14acc9e740389f4_15345]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_8ed4bb5da6159b35d14acc9e740389f4_15345]
  ;')