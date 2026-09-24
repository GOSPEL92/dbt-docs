
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_3925e085a7caff40f3658370f9aefb37_6900]
   as 
    
    
    



select avg_resolution_time_hours
from "ravenstack_saas"."dbo"."fct_customer_health"
where avg_resolution_time_hours is null



  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_3925e085a7caff40f3658370f9aefb37_6900]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_3925e085a7caff40f3658370f9aefb37_6900]
  ;')