
  
    USE [ravenstack_saas];
    USE [ravenstack_saas];
    
    

    

    USE [ravenstack_saas];
    EXEC('
        CREATE OR ALTER VIEW "dbo"."fct_account_health__dbt_tmp__dbt_tmp_vw" AS 

WITH subscriptions AS (
    SELECT
        account_id,
        COUNT(*) AS subscription_count,
        MAX(plan_tier) AS current_plan
    FROM "ravenstack_saas"."dbo"."int_feature_usage_subscriptions_agg"
    GROUP BY account_id
),

tickets AS (
    SELECT
        account_id,
        COUNT(*) AS support_ticket_count,
        AVG(resolution_time_hours) AS avg_resolution_time,
        AVG(satisfaction_score) AS avg_satisfaction_score
    FROM "ravenstack_saas"."dbo"."int_support_tickets_accounts"
    GROUP BY account_id
),

accounts AS (
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
    FROM "ravenstack_saas"."dbo"."stg_ravenstack_accounts"
)

SELECT
    a.account_id,
    a.account_name,
    a.industry,
    a.country,
    a.signup_date,
    a.referral_source,
    a.plan_tier,
    a.seats,
    a.is_trial,
    a.churn_flag,
    COALESCE(s.subscription_count, 0) AS subscription_count,
    s.current_plan,
    COALESCE(t.support_ticket_count, 0) AS support_ticket_count,
    COALESCE(t.avg_resolution_time, 0) AS avg_resolution_time,
    COALESCE(t.avg_satisfaction_score, 0) AS avg_satisfaction_score
FROM accounts a
LEFT JOIN subscriptions s ON a.account_id = s.account_id
LEFT JOIN tickets t ON a.account_id = t.account_id;;
    ')

EXEC('IF OBJECT_ID(''dbo.fct_account_health__dbt_tmp'', ''U'') IS NOT NULL
                EXEC(''DROP TABLE "ravenstack_saas"."dbo"."fct_account_health__dbt_tmp"'');SELECT * INTO "ravenstack_saas"."dbo"."fct_account_health__dbt_tmp" FROM "ravenstack_saas"."dbo"."fct_account_health__dbt_tmp__dbt_tmp_vw" 
    OPTION (LABEL = ''dbt-sqlserver'');

        ')

    
    EXEC('DROP VIEW IF EXISTS "dbo"."fct_account_health__dbt_tmp__dbt_tmp_vw"')



    
    use [ravenstack_saas];
    if EXISTS (
        SELECT *
        FROM sys.indexes with (nolock)
        WHERE name = 'dbo_fct_account_health__dbt_tmp_cci'
        AND object_id=object_id('"dbo"."fct_account_health__dbt_tmp"')
    )
    DROP index "dbo"."fct_account_health__dbt_tmp".dbo_fct_account_health__dbt_tmp_cci
    CREATE CLUSTERED COLUMNSTORE INDEX dbo_fct_account_health__dbt_tmp_cci
    ON "dbo"."fct_account_health__dbt_tmp"

   


  