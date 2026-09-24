
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_bb4b5d3779fda94f508a82b4009d30f3_7804]
   as 
    
    
    



select account_id
from "ravenstack_saas"."dbo"."fct_account_health"
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
    [dbo].[testview_bb4b5d3779fda94f508a82b4009d30f3_7804]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_bb4b5d3779fda94f508a82b4009d30f3_7804]
  ;')