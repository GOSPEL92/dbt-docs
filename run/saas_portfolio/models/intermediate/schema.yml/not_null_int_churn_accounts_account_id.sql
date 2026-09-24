
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_ea545434159d0d2a257e0e5269e5a985_14187]
   as 
    
    
    



select account_id
from "ravenstack_saas"."dbo"."int_churn_accounts"
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
    [dbo].[testview_ea545434159d0d2a257e0e5269e5a985_14187]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_ea545434159d0d2a257e0e5269e5a985_14187]
  ;')