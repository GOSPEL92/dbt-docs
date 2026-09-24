
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_3eb2d63e9df1762ecc23d7d35f5bb5b6_7915]
   as 
    
    
    



select auto_renew_flag
from "ravenstack_saas"."dbo"."dim_subscriptions"
where auto_renew_flag is null



  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_3eb2d63e9df1762ecc23d7d35f5bb5b6_7915]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_3eb2d63e9df1762ecc23d7d35f5bb5b6_7915]
  ;')