{{
    config(
        materialized='table'
    )
}}

select
    *
from {{ ref('stg_shopify_inventory') }}