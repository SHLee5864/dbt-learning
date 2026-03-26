{{ config(materialized='view') }}

select
    customer_id,
    trim(first_name)            as first_name,
    trim(last_name)             as last_name,
    lower(email)                as email,
    cast(signup_date as date)   as signup_date,
    cast(age as int)            as age
from {{ source('raw', 'customers') }}