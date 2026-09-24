
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_cf5094470ccf864ecad8727cb730c3ba_15852]
   as 
    
    
    



select avg_satisfaction_score
from "ravenstack_saas"."dbo"."fct_account_health"
where avg_satisfaction_score is null



  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_cf5094470ccf864ecad8727cb730c3ba_15852]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_cf5094470ccf864ecad8727cb730c3ba_15852]
  ;')