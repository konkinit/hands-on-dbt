
WITH source AS (
    select
        *
    from
        {{ source('fid', 'trans_product') }}
)

select
    trans_product_id,
    transaction_id,
    receipt_line,
    article_id,
    quantity,
    price,
    discount
from
    source
