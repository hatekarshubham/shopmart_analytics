select 
    id as customer_id,
    first_name as fname,
    last_name as lname,
    email,
    phone,
    country,
    signup_date as signup_dt,
    current_timestamp as create_ts,
    'etl' as create_user_id,
    current_timestamp as last_updt_ts,
    'etl' as last_updt_user_id
from {{source('shopmart','customers')}}