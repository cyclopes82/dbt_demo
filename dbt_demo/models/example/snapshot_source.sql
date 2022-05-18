{{ config(materialized='table', alias='first_model', tags=["nightly", "example"] ) }}

with source_data as (

    select 1 as id, 'MH' as state, '2022-02-01 00:01:00.000'::timestamp as updated_at
    union all
    select null as id, 'MH' as state, '2022-01-01 00:00:00.000'::timestamp as updated_at
    union all
    select 4 as id, 'VT' as state, '2020-01-01 00:00:00.000'::timestamp as updated_at

)

select *
from source_data
