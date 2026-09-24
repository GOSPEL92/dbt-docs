
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_6906e27ea7eca901bf1f96748bae90c6_18334]
   as 
    
    
    

with all_values as (

    select
        billing_frequency as value_field,
        count(*) as n_records

    from "ravenstack_saas"."dbo"."dim_subscriptions"
    group by billing_frequency

)

select *
from all_values
where value_field not in (
    ''monthly'',''quarterly'',''yearly'',''weekly'',''annual''
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
    [dbo].[testview_6906e27ea7eca901bf1f96748bae90c6_18334]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_6906e27ea7eca901bf1f96748bae90c6_18334]
  ;')