
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_c2011379d7369793ddecb4f3b0fe0792_12665]
   as 
    SELECT
    subscription_id,
    usage_id,
    usage_date,
    COUNT(*) AS row_count
FROM "ravenstack_saas"."dbo"."int_feature_usage_subscriptions"
GROUP BY subscription_id, usage_id, usage_date
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
    [dbo].[testview_c2011379d7369793ddecb4f3b0fe0792_12665]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_c2011379d7369793ddecb4f3b0fe0792_12665]
  ;')