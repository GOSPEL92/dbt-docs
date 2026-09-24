
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_2186fca51e1d13a5a60ca7ec72eed97f_4576]
   as 
    
    
    



select is_reactivation
from "ravenstack_saas"."dbo"."stg_ravenstack_churn_event"
where is_reactivation is null



  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_2186fca51e1d13a5a60ca7ec72eed97f_4576]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_2186fca51e1d13a5a60ca7ec72eed97f_4576]
  ;')