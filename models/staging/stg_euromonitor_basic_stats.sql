with basic_stats as(
    select
        *
    from {{ source('euromonitor_base_data', 'market_sizing_data') }}
)

select * from basic_stats