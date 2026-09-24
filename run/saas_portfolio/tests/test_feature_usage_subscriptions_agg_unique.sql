
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_e3dad0ed0d5dd777f4d7314404131393_15923]
   as 
    SELECT
    subscription_id,
    feature_name,
    usage_date,
    COUNT(*) AS row_count
FROM "ravenstack_saas"."dbo"."int_feature_usage_subscriptions_agg"
GROUP BY subscription_id, feature_name, usage_date
HAVING COUNT(*) > 1
  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_e3dad0ed0d5dd777f4d7314404131393_15923]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_e3dad0ed0d5dd777f4d7314404131393_15923]
  ;')