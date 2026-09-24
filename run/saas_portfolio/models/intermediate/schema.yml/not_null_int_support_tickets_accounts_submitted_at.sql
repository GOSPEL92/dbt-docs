
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_1a2de90976dc6eb50dee4b326c6ece89_12652]
   as 
    
    
    



select submitted_at
from "ravenstack_saas"."dbo"."int_support_tickets_accounts"
where submitted_at is null



  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_1a2de90976dc6eb50dee4b326c6ece89_12652]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_1a2de90976dc6eb50dee4b326c6ece89_12652]
  ;')