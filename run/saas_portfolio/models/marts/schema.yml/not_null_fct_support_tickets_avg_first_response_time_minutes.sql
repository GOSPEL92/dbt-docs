
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_73350d05cc064b306ebb616f29e06697_7262]
   as 
    
    
    



select avg_first_response_time_minutes
from "ravenstack_saas"."dbo"."fct_support_tickets"
where avg_first_response_time_minutes is null



  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_73350d05cc064b306ebb616f29e06697_7262]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_73350d05cc064b306ebb616f29e06697_7262]
  ;')