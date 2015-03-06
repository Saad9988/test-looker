- view: pipeline_store_daily_spenders_new
  sql_table_name: public.pipeline_store_daily_spenders_new
  fields:

  - dimension: key
    sql: ${TABLE}.key

  - dimension: num_covers
    sql: ${TABLE}.num_covers

  - dimension: num_visits
    type: int
    sql: ${TABLE}.num_visits

  - dimension: spender_id
    sql: ${TABLE}.spender_id

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

  - dimension: total_tips
    sql: ${TABLE}.total_tips

  - measure: count
    type: count
    drill_fields: []

