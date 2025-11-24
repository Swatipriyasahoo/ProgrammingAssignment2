select
    a.account_id,
    a.name as account_name,
    o.fiscal_year,
    count(o.opportunity_id) as total_opportunities,
    sum(case when o.is_won then 1 else 0 end) as won_opportunities,
    sum(o.amount) as total_revenue,
    avg(o.amount) as avg_deal_size,
    sum(case when o.is_won then o.amount else 0 end) / nullif(sum(o.amount),0) as win_rate
from {{ ref('fact_opportunity') }} o
join {{ ref('dim_account') }} a on o.account_id = a.account_id
group by a.account_id, a.name, o.fiscal_year