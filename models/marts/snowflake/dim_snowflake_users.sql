with users as (
    select
     login_name as user_name
    from {{ ref('stg_snowflake_users') }}
), num_sessions as (
    select 
        user_name,
        count(distinct session_id) as total_sessions,
        min(date(created_on)) as first_session,
        max(date(created_on)) as last_session
     from {{ ref('stg_snowflake_sessions') }}
     group by 1
)

select * from users left join num_sessions using(user_name)