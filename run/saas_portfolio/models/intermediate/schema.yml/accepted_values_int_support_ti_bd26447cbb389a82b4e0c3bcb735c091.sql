
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_782dcd5a5c414ab68291dab431adcc03_14356]
   as 
    
    
    

with all_values as (

    select
        issue_type as value_field,
        count(*) as n_records

    from "ravenstack_saas"."dbo"."int_support_tickets_accounts"
    group by issue_type

)

select *
from all_values
where value_field not in (
    ''bug'',''feature_request'',''billing'',''support''
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
    [dbo].[testview_782dcd5a5c414ab68291dab431adcc03_14356]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_782dcd5a5c414ab68291dab431adcc03_14356]
  ;')