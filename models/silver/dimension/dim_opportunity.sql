-- models/dimensions/dim_opportunity.sql

WITH base AS (
    SELECT
        opportunity_id,
        account_id,
        record_type_id,
        name,
        description,
        stage_name,
        forecast_category,
        currency_code,
        owner_id,
        created_date,
        created_by_id,
        last_activity_date,
        fiscal_quarter,
        fiscal_year,
        contact_id,
        opportunity_source,
        assignment,
        billing_director_vp,
        business_unit,
        engagement,
        industry,
        lost_reason,
        ownership_type,
        process_stage,
        region,
        service_line,
        service_line_id,
        service,
        service_id,
        sub_industry,
        portfolio_company,
        country,
        current_stage,
        business,
        sf_18_digit_id
    FROM {{ ref('stg_sfdc_opportunity') }}
)

SELECT * FROM base
