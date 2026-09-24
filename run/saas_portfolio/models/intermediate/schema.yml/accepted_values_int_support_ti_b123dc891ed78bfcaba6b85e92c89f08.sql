
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_172485ec4f909316f2df44abb1eced6c_5006]
   as 
    
    
    

with all_values as (

    select
        escalation_flag as value_field,
        count(*) as n_records

    from "ravenstack_saas"."dbo"."int_support_tickets_accounts"
    group by escalation_flag

)

select *
from all_values
where value_field not in (
    ''0'',''1''
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
    [dbo].[testview_172485ec4f909316f2df44abb1eced6c_5006]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_172485ec4f909316f2df44abb1eced6c_5006]
  ;')