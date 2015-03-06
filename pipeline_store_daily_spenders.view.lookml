- view: pipeline_store_daily_spenders
  sql_table_name: public.pipeline_store_daily_spenders
  fields:

  - dimension: key
    sql: ${TABLE}.key

  - dimension: num_visits
    type: int
    sql: ${TABLE}.num_visits

  - dimension: spender_id_brand_pretty_url
    sql: ${TABLE}.spender_id_brand_pretty_url

  - dimension_group: store
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.store_date

  - dimension: store_pretty_url
    sql: ${TABLE}.store_pretty_url

  - dimension: total_spend
    type: int
    sql: ${TABLE}.total_spend

  - measure: count
    type: count
    drill_fields: []

