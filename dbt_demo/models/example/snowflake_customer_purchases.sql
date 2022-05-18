
{{ config(materialized='table') }}

select
    c_custkey,
    c_name,
    c_nationkey as nation,
    sum(O_TOTALPRICE) as totalprice
From
    "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF1"."CUSTOMER" c
left join
    "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF1"."ORDERS" o
on c.c_custkey = o.o_custkey
group by
    c_custkey,
    c_name,
    c_nationkey
