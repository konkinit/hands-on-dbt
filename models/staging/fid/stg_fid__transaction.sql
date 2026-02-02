WITH source AS (
    select
        *
    from
        {{ source('fid', 'transaction') }}
)

select
    transaction_id,
    customer_id,
    store_id,
    amount,
    transaction_date,
    created_at
from
    source
