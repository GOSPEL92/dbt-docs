
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_82ca74a5850b08b24541b8c70a52149e_9172]
   as 
    
    
    



select total_arr
from "ravenstack_saas"."dbo"."fct_subscriptions"
where total_arr is null



  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_82ca74a5850b08b24541b8c70a52149e_9172]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_82ca74a5850b08b24541b8c70a52149e_9172]
  ;')