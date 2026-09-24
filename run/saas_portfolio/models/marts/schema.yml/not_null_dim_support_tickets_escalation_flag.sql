
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_a3dda48c2af8840aecd81299eaab0945_13059]
   as 
    
    
    



select escalation_flag
from "ravenstack_saas"."dbo"."dim_support_tickets"
where escalation_flag is null



  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_a3dda48c2af8840aecd81299eaab0945_13059]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_a3dda48c2af8840aecd81299eaab0945_13059]
  ;')