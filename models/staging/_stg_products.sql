select 
    id as product_id,
    product_name as product_nm,
    category,
    brand,
    price,
    in_stock,
    current_timestamp as create_ts,
    'etl' as create_user_id,
    current_timestamp as last_updt_ts,
    'etl' as last_updt_user_id
from {{source('shopmart','products')}}