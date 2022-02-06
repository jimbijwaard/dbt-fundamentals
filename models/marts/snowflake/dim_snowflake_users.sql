with users as (
    select
     login_name as user_name
    from {{ ref('stg_users') }}
), num_sessions as (
    select 
        user_name,
        min(date(created_on)) as first_session,
        max(date(created_on)) as last_session
     from {{ ref('stg_sessions') }}
     group by 1
)

select * from users left join num_sessions using(user_name)