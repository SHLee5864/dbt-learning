{{ config(materialized='table') }}

select
    id,
    id * 2 as id_doubled
from {{ ref('my_second_dbt_model') }}