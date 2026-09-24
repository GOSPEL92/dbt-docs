
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_0d70811a5d9015436bd144a2fbaec075_2860]
   as 
    
    
    



select country
from "ravenstack_saas"."dbo"."fct_customer_health"
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
    [dbo].[testview_0d70811a5d9015436bd144a2fbaec075_2860]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_0d70811a5d9015436bd144a2fbaec075_2860]
  ;')