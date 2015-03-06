- view: real_time_spends
  sql_table_name: public.real_time_spends
  fields:

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: pretty_url
    sql: ${TABLE}.pretty_url

  - dimension_group: settled
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.settled_on

  - dimension: spend
    type: int
    sql: ${TABLE}.spend

  - dimension: spender_id
    sql: ${TABLE}.spender_id

  - dimension_group: visit
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.visit_date

  - measure: count
    type: count
    drill_fields: []

