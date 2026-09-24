USE [ravenstack_saas];
    
    

    

    USE [ravenstack_saas];
    EXEC('
        CREATE OR ALTER VIEW "dbo"."dim_accounts__dbt_tmp" AS 

SELECT
    account_id,
    account_name,
    industry,
    country,
    signup_date,
    referral_source,
    plan_tier,
    seats,
    is_trial,
    churn_flag
FROM "ravenstack_saas"."dbo"."stg_ravenstack_accounts";
    ')

