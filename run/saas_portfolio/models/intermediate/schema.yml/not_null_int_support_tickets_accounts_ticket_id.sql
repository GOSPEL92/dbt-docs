
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_393cbdcb0584ad81374c3f412fcafd2f_10511]
   as 
    
    
    



select ticket_id
from "ravenstack_saas"."dbo"."int_support_tickets_accounts"
where ticket_id is null



  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_393cbdcb0584ad81374c3f412fcafd2f_10511]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_393cbdcb0584ad81374c3f412fcafd2f_10511]
  ;')