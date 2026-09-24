
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_d5a642f280baa20997fc0e77f63aa1aa_2764]
   as 
    
    
    



select subscription_id
from "ravenstack_saas"."dbo"."int_feature_usage_subscriptions_agg"
where subscription_id is null



  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_d5a642f280baa20997fc0e77f63aa1aa_2764]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_d5a642f280baa20997fc0e77f63aa1aa_2764]
  ;')