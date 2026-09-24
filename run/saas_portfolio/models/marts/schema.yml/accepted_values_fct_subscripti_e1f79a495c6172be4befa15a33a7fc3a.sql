
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_6833370ca91fbc4f51d427031720650f_6378]
   as 
    
    
    

with all_values as (

    select
        plan_tier as value_field,
        count(*) as n_records

    from "ravenstack_saas"."dbo"."fct_subscriptions"
    group by plan_tier

)

select *
from all_values
where value_field not in (
    ''basic'',''pro'',''enterprise''
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
    [dbo].[testview_6833370ca91fbc4f51d427031720650f_6378]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_6833370ca91fbc4f51d427031720650f_6378]
  ;')