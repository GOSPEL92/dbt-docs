
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_35aa1eaa9f56687043ebe2b70169f2e7_17057]
   as 
    
    
    



select escalated_ticket_count
from "ravenstack_saas"."dbo"."fct_customer_health"
where escalated_ticket_count is null



  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_35aa1eaa9f56687043ebe2b70169f2e7_17057]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_35aa1eaa9f56687043ebe2b70169f2e7_17057]
  ;')