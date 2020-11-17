

with source_store_sales AS (
  select * from {{ source('snowflake_sample_data', 'STORE_SALES') }} limit 100
),
final AS (
  select * from source_store_sales
)

select * from final