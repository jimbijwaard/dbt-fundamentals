{{
    config(
        materialized='incremental',
        unique_key = 'date_nk'
    )
}}


select 
    date(created_on) as date_nk,
    count(distinct session_id) as sessions
from {{ ref('stg_snowflake_sessions') }}
group by 1

{% if is_incremental() -%}
    having date(created_on) >= (select max(date_nk) from {{this}})
{%- endif %}

