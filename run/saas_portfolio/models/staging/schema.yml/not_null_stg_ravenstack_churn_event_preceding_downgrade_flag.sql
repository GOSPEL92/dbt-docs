
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_2c5b3e9c2d2e2d84017460ea1a6c7b2e_7015]
   as 
    
    
    



select preceding_downgrade_flag
from "ravenstack_saas"."dbo"."stg_ravenstack_churn_event"
where preceding_downgrade_flag is null



  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_2c5b3e9c2d2e2d84017460ea1a6c7b2e_7015]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_2c5b3e9c2d2e2d84017460ea1a6c7b2e_7015]
  ;')