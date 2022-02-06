with users as(
    select
        *
    from {{ source('snowflake_account_usage', 'users') }}
)

select * from users