-- This is an incremental model that builds on top of the fct_orders model.
--It will only process new records based on the order_date column.

{{ config(
    materialized='incremental',
    unique_key='order_id'
) }}

with base as (
    select
        o.order_id,
        o.order_date,
        o.customer_id,
        c.first_name,
        c.last_name,
        c.email,
        o.product_id,
        p.product_name,
        p.category,
        o.amount,
        p.price,
        o.update_date,
        o.amount * p.price as total_amount
    from {{ ref('stg_orders') }} o
    left join {{ ref('stg_customers') }} c on o.customer_id = c.customer_id
    left join {{ ref('stg_products') }} p on o.product_id = p.product_id
)

select *
from base

{% if is_incremental() %}
where order_date = date_trunc('day', current_date - interval '1 day')
{% endif %}