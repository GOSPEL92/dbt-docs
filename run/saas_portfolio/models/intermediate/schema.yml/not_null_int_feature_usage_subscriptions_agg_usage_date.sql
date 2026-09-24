
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_db681b2922768888257bbe176bf1643d_2889]
   as 
    
    
    



select usage_date
from "ravenstack_saas"."dbo"."int_feature_usage_subscriptions_agg"
where usage_date is null



  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_db681b2922768888257bbe176bf1643d_2889]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_db681b2922768888257bbe176bf1643d_2889]
  ;')