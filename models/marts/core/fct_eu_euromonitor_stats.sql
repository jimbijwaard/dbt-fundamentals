select
    *
from {{ ref('stg_euromonitor_basic_stats') }}
where country_sk in ('Poland','Ukraine','Romania','Uzbekistan','Kazakhstan','Bulgaria','Portugal','Bosnia and Herzegovina')
