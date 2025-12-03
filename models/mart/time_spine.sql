-- models/time_spine.sql
{{ config(materialized='table') }}

WITH base_dates AS (
   {{ 
    dbt.date_spine(
        datepart = 'day',
        start_date = "DATE('2000-01-01')",
        end_date =   "DATE('2030-01-01')"
    )
    }}
),

final as (
     SELECT
        cast(date_day as date) as date_day
        from base_dates
)

select * 
from final
where date_day > dateadd(year, -5, current_date())
and date_day < dateadd (day, 30, current_date());
