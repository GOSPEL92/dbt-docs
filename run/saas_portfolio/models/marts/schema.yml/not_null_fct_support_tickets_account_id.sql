
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_3ef9fee571960660482cd7b591c7574e_12396]
   as 
    
    
    



select account_id
from "ravenstack_saas"."dbo"."fct_support_tickets"
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
    [dbo].[testview_3ef9fee571960660482cd7b591c7574e_12396]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_3ef9fee571960660482cd7b591c7574e_12396]
  ;')