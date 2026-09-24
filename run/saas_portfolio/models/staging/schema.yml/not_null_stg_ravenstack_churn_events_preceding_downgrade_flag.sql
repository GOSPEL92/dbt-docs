
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_7acb519f2d9cb3ca5940238578cd741a_6020]
   as 
    
    
    



select preceding_downgrade_flag
from "ravenstack_saas"."dbo"."stg_ravenstack_churn_events"
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
    [dbo].[testview_7acb519f2d9cb3ca5940238578cd741a_6020]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_7acb519f2d9cb3ca5940238578cd741a_6020]
  ;')