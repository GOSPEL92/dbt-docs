
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_7be093ad2d81ecca3423def3a9c9fa62_16472]
   as 
    
    
    



select country
from "ravenstack_saas"."dbo"."int_subscriptions_accounts"
where country is null



  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_7be093ad2d81ecca3423def3a9c9fa62_16472]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_7be093ad2d81ecca3423def3a9c9fa62_16472]
  ;')