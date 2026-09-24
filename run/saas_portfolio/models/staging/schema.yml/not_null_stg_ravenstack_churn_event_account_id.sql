
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_eac0e916226aa5bd0366c9c1e1100809_15604]
   as 
    
    
    



select account_id
from "ravenstack_saas"."dbo"."stg_ravenstack_churn_event"
where account_id is null



  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_eac0e916226aa5bd0366c9c1e1100809_15604]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_eac0e916226aa5bd0366c9c1e1100809_15604]
  ;')