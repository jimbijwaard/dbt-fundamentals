{{
    config(
        materialized='incremental'
    )
}}

select
    *
from {{ source('snowflake_account_usage', 'sessions') }}

{% if is_incremental() -%}
    where created_on >= (select max(created_on) from {{this}})
{%- endif %}