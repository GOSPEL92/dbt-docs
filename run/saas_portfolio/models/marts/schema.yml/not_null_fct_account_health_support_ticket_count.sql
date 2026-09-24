
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_4407b1fc2f60cf798761ec7a31c212c4_5960]
   as 
    
    
    



select support_ticket_count
from "ravenstack_saas"."dbo"."fct_account_health"
where support_ticket_count is null



  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_4407b1fc2f60cf798761ec7a31c212c4_5960]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_4407b1fc2f60cf798761ec7a31c212c4_5960]
  ;')