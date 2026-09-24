

SELECT
    subscription_id,
    account_id,
    plan_tier,
    seats,
    billing_frequency,
    is_trial,
    auto_renew_flag,
    upgrade_flag,
    downgrade_flag,
    churn_flag
FROM "ravenstack_saas"."dbo"."stg_ravenstack_subscriptions"