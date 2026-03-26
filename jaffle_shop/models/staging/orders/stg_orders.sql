{{ config(materialized='view') }}

select
    order_id,
    customer_id,
    cast(order_date as date)    as order_date,
    cast(amount as float)       as amount,
    order_status
from {{ source('raw', 'orders') }}