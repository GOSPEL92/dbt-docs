
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_566f7d076f62093d5ac8af474ffa559f_9340]
   as 
    
    
    

with all_values as (

    select
        reason_code as value_field,
        count(*) as n_records

    from "ravenstack_saas"."dbo"."stg_ravenstack_churn_events"
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
    [dbo].[testview_566f7d076f62093d5ac8af474ffa559f_9340]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_566f7d076f62093d5ac8af474ffa559f_9340]
  ;')