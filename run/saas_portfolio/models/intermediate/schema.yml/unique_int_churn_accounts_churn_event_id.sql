
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_66abd4fdc339ff728214707e82248ac0_13721]
   as 
    
    
    

select
    churn_event_id as unique_field,
    count(*) as n_records

from "ravenstack_saas"."dbo"."int_churn_accounts"
where churn_event_id is not null
group by churn_event_id
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
    [dbo].[testview_66abd4fdc339ff728214707e82248ac0_13721]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_66abd4fdc339ff728214707e82248ac0_13721]
  ;')