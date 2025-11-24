{{ config(materialized='table') }}
 
select
    opportunity_id,
    account_id,
    owner_id,
    closed_date,
    is_closed,
    is_won,
    amount,
    expected_revenue,
    probability,
    fiscal_quarter,
    fiscal_year
from {{ ref('stg_sfdc_opportunity') }}