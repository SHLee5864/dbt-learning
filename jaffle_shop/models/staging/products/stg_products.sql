{{ config(materialized='view') }}

select
    product_id,
    product_name,
    category,
    cast(price as float)        as price
from {{ source('raw', 'products') }}