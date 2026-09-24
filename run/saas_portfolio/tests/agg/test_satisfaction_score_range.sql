
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_0d102bd32376ecc29b3dc7b5bb3ffad6_5023]
   as 
    SELECT *
FROM "ravenstack_saas"."dbo"."fct_account_health"
WHERE avg_satisfaction_score IS NOT NULL
  AND (avg_satisfaction_score < 0 OR avg_satisfaction_score > 10)
  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_0d102bd32376ecc29b3dc7b5bb3ffad6_5023]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_0d102bd32376ecc29b3dc7b5bb3ffad6_5023]
  ;')