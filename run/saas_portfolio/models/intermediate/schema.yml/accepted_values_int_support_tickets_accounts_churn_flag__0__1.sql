
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_a24c57a7c77d825883c3c4df89eedc18_6982]
   as 
    
    
    

with all_values as (

    select
        churn_flag as value_field,
        count(*) as n_records

    from "ravenstack_saas"."dbo"."int_support_tickets_accounts"
    group by churn_flag

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
    [dbo].[testview_a24c57a7c77d825883c3c4df89eedc18_6982]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_a24c57a7c77d825883c3c4df89eedc18_6982]
  ;')