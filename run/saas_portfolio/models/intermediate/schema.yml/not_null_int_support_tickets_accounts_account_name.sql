
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_29213f92c6aae05da8ab8e10436511c8_9360]
   as 
    
    
    



select account_name
from "ravenstack_saas"."dbo"."int_support_tickets_accounts"
where account_name is null



  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_29213f92c6aae05da8ab8e10436511c8_9360]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_29213f92c6aae05da8ab8e10436511c8_9360]
  ;')