{% snapshot account_snapshot %}
 
{{ config(
    target_database='analytics',
    target_schema='snapshots',
    unique_key='account_id',
    strategy='check',
    check_cols=['name','industry','region','client_status','type']
) }}
 
select * from {{ ref('stg_sfdc_account') }}
 
{% endsnapshot %}