

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