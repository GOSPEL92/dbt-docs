
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_754462f1642c7f9426655042be3ddd93_6831]
   as 
    
    
    



select ticket_id
from "ravenstack_saas"."dbo"."dim_support_tickets"
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
    [dbo].[testview_754462f1642c7f9426655042be3ddd93_6831]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_754462f1642c7f9426655042be3ddd93_6831]
  ;')