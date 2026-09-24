
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_087947b3ffb22864737f280549f1ad20_6574]
   as 
    
    
    



select industry
from "ravenstack_saas"."dbo"."dim_accounts"
where industry is null



  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_087947b3ffb22864737f280549f1ad20_6574]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_087947b3ffb22864737f280549f1ad20_6574]
  ;')