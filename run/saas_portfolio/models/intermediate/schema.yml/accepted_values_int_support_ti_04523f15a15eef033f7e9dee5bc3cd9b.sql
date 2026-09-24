
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_710953a0660752149c094b4b6731e8bb_16861]
   as 
    
    
    

with all_values as (

    select
        priority as value_field,
        count(*) as n_records

    from "ravenstack_saas"."dbo"."int_support_tickets_accounts"
    group by priority

)

select *
from all_values
where value_field not in (
    ''low'',''medium'',''high'',''urgent''
)



  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_710953a0660752149c094b4b6731e8bb_16861]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_710953a0660752149c094b4b6731e8bb_16861]
  ;')