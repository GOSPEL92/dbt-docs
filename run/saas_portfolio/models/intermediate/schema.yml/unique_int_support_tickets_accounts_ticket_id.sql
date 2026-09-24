
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_954716bdedccc108fe9f7dcca19a6fa0_8687]
   as 
    
    
    

select
    ticket_id as unique_field,
    count(*) as n_records

from "ravenstack_saas"."dbo"."int_support_tickets_accounts"
where ticket_id is not null
group by ticket_id
having count(*) > 1



  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_954716bdedccc108fe9f7dcca19a6fa0_8687]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_954716bdedccc108fe9f7dcca19a6fa0_8687]
  ;')