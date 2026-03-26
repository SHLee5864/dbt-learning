{{ config(materialized='table') }}

with orders as (
    select *
    from {{ ref('stg_orders') }}
), customers as (
    select *
    from {{ ref('stg_customers') }}
), products as (
    select *
    from {{ ref('dim_products') }}
), joined as (
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
        p.price,
        o.amount,
        o.order_date,
        o.amount * p.price as total_amount
    from orders o
    left join customers c on o.customer_id = c.customer_id
    left join products p on o.product_id = p.product_id
)
select *
from joined