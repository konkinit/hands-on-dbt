select
  transaction_id,
  sum(price*quantity-discount) as total_amount
from {{ ref('stg_fid__trans_product') }}
group by transaction_id
having (sum(price*quantity-discount) < 0)