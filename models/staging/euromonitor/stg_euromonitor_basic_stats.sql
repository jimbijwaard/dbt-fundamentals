with country_statistics as(
    select
        *
    from {{ source('euromonitor', 'market_sizing_data') }}
)

select * from country_statistics