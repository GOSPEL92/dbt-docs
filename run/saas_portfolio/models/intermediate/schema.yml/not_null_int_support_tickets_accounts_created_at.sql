
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_7aa12a3f889c6b21ab3a06d8579dd994_6656]
   as 
    
    
    



select created_at
from "ravenstack_saas"."dbo"."int_support_tickets_accounts"
where created_at is null



  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_7aa12a3f889c6b21ab3a06d8579dd994_6656]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_7aa12a3f889c6b21ab3a06d8579dd994_6656]
  ;')