{{ config(
    materialized='table',
    tags=['daily']
) }}

select
    date,
    transaction_category,
    count(*) as transactions_count,
    {{ conversion('value', '18') }} as total_value

from

{{ ref('int_transactions_enriched') }} 

group by
date,
transaction_category
