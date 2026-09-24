
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_e5191e2ae95c5df8b3c5343eafe9e8ff_2120]
   as 
    
    
    



select churn_event_id
from "ravenstack_saas"."dbo"."int_churn_accounts"
where churn_event_id is null



  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_e5191e2ae95c5df8b3c5343eafe9e8ff_2120]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_e5191e2ae95c5df8b3c5343eafe9e8ff_2120]
  ;')