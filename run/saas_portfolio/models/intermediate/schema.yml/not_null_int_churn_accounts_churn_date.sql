
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_5d729b467bc095cb1771cf14f18c15aa_16890]
   as 
    
    
    



select churn_date
from "ravenstack_saas"."dbo"."int_churn_accounts"
where churn_date is null



  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_5d729b467bc095cb1771cf14f18c15aa_16890]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_5d729b467bc095cb1771cf14f18c15aa_16890]
  ;')