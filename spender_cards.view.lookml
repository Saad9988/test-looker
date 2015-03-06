- view: spender_cards
  sql_table_name: public.spender_cards
  fields:

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: last_four
    sql: ${TABLE}.last_four

  - dimension: pretty_url
    sql: ${TABLE}.pretty_url

  - dimension: spender_id
    sql: ${TABLE}.spender_id

  - measure: count
    type: count
    drill_fields: []

