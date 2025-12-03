-- models/facts/fct_account_performance.sql

WITH base AS (
    SELECT
        account_id,
        owner_id,
        created_date,
        last_activity_date,
        won_opportunities,
        number_of_employees,
        founded_year,
        currency_code
    FROM {{ ref('stg_sfdc_account') }}
)

SELECT
    account_id,
    owner_id,
    created_date,
    last_activity_date,
    -- Measures
    won_opportunities,
    number_of_employees,
    founded_year,
    -- Derived metrics
    CASE WHEN won_opportunities > 0 THEN 1 ELSE 0 END AS has_won_opportunity
FROM base
