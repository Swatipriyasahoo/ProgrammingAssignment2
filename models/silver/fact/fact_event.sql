{{ config(materialized='table') }}
 
select
    event_id,
    account_id,
    owner_id,
    activity_date_time,
    activity_date,
    start_date_time,
    end_date_time,
    duration_in_minutes,
    who_count,
    what_count
from {{ ref('stg_sfdc_event') }}