with sessions as(
    select
        *
    from {{ source('snowflake_account_usage', 'sessions') }}
)

select * from sessions