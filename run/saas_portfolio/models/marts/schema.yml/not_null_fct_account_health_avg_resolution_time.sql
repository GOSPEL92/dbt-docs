
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_4b4ca224b281b16107b3de48ba0753b1_3654]
   as 
    
    
    



select avg_resolution_time
from "ravenstack_saas"."dbo"."fct_account_health"
where avg_resolution_time is null



  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_4b4ca224b281b16107b3de48ba0753b1_3654]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_4b4ca224b281b16107b3de48ba0753b1_3654]
  ;')