
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_80f067653c168188183c7cf87c1feba4_7982]
   as 
    
    
    



select avg_first_response_time_minutes
from "ravenstack_saas"."dbo"."fct_customer_health"
where avg_first_response_time_minutes is null



  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_80f067653c168188183c7cf87c1feba4_7982]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_80f067653c168188183c7cf87c1feba4_7982]
  ;')