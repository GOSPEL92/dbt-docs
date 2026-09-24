USE [ravenstack_saas];
    
    

    

    USE [ravenstack_saas];
    EXEC('
        CREATE OR ALTER VIEW "dbo"."int_churn_accounts" AS 

WITH churn AS (
    SELECT *
    FROM "ravenstack_saas"."dbo"."stg_ravenstack_churn_events"
),
accounts AS (
    SELECT *
    FROM "ravenstack_saas"."dbo"."stg_ravenstack_accounts"
)

SELECT
    c.churn_event_id,
    c.account_id,
    a.account_name,
    a.industry,
    a.country,
    c.churn_date,
    c.reason_code,
    c.refund_amount_usd,
    c.preceding_upgrade_flag,
    c.preceding_downgrade_flag,
    c.is_reactivation,
    c.feedback_text
FROM churn c
LEFT JOIN accounts a
    ON c.account_id = a.account_id;;
    ')

