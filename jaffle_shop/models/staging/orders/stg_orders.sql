{{ config(materialized='view') }}

select
    order_id,
    product_id,
    customer_id,
    cast(order_date as date)    as order_date,
    cast(amount as float)       as amount,
    update_date,
    order_status
from {{ source('raw', 'orders') }}