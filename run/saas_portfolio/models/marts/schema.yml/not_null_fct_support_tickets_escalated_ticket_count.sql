
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_3ff89b134c4a6482412b1d2f5ff93a2d_7369]
   as 
    
    
    



select escalated_ticket_count
from "ravenstack_saas"."dbo"."fct_support_tickets"
where escalated_ticket_count is null



  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_3ff89b134c4a6482412b1d2f5ff93a2d_7369]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_3ff89b134c4a6482412b1d2f5ff93a2d_7369]
  ;')