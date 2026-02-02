select
    *
from
    {{ ref('stg_fid__transaction') }} ft inner join
        {{ ref('stg_fid__trans_product') }} ftp
        on ft.transaction_id=ftp.transaction_id