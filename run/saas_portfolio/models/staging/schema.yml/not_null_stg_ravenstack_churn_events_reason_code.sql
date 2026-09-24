
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_736f095bd5744dfe8d7a2f3414065da8_14372]
   as 
    
    
    



select reason_code
from "ravenstack_saas"."dbo"."stg_ravenstack_churn_events"
where reason_code is null



  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_736f095bd5744dfe8d7a2f3414065da8_14372]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_736f095bd5744dfe8d7a2f3414065da8_14372]
  ;')