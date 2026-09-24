
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_3a638555ac4e9d800d03687eb93a3f21_17921]
   as 
    
    
    

with all_values as (

    select
        status as value_field,
        count(*) as n_records

    from "ravenstack_saas"."dbo"."dim_subscriptions"
    group by status

)

select *
from all_values
where value_field not in (
    ''active'',''expired'',''cancelled'',''trial''
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
    [dbo].[testview_3a638555ac4e9d800d03687eb93a3f21_17921]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_3a638555ac4e9d800d03687eb93a3f21_17921]
  ;')