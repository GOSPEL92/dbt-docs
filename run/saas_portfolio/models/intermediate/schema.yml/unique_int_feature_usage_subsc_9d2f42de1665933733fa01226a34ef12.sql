
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_63ae209ac2866e018588847a16c067ba_11095]
   as 
    
    
    

select
    [''subscription_id'', ''feature_name'', ''usage_date''] as unique_field,
    count(*) as n_records

from "ravenstack_saas"."dbo"."int_feature_usage_subscriptions_agg"
where [''subscription_id'', ''feature_name'', ''usage_date''] is not null
group by [''subscription_id'', ''feature_name'', ''usage_date'']
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
    [dbo].[testview_63ae209ac2866e018588847a16c067ba_11095]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_63ae209ac2866e018588847a16c067ba_11095]
  ;')