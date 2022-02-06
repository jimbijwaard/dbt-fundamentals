select 
    date(created_on) as date,
    count(distinct session_id) as sessions
from {{ ref('stg_sessions') }}
group by 1