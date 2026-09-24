
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_2a1d2359da8dad68a20e56dc4991e4a0_13410]
   as 
    
    
    



select preceding_upgrade_flag
from "ravenstack_saas"."dbo"."stg_ravenstack_churn_event"
where preceding_upgrade_flag is null



  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_2a1d2359da8dad68a20e56dc4991e4a0_13410]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_2a1d2359da8dad68a20e56dc4991e4a0_13410]
  ;')