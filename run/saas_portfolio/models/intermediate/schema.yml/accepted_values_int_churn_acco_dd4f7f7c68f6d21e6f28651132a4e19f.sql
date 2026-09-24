
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_7acb582bacc53bbd7915345f0e6cd36a_12350]
   as 
    
    
    

with all_values as (

    select
        reason_code as value_field,
        count(*) as n_records

    from "ravenstack_saas"."dbo"."int_churn_accounts"
    group by reason_code

)

select *
from all_values
where value_field not in (
    ''pricing'',''service_issue'',''competition'',''feature_gap'',''other''
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
    [dbo].[testview_7acb582bacc53bbd7915345f0e6cd36a_12350]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_7acb582bacc53bbd7915345f0e6cd36a_12350]
  ;')