- view: pipeline_spender_tickets
  sql_table_name: public.pipeline_spender_tickets
  fields:

  - dimension: brand_pretty_url
    sql: ${TABLE}.brand_pretty_url

  - dimension: key
    sql: ${TABLE}.key

  - dimension: server_id
    sql: ${TABLE}.server_id

  - dimension: spender_id
    sql: ${TABLE}.spender_id

  - dimension_group: store
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.store_date

  - dimension: store_pretty_url
    sql: ${TABLE}.store_pretty_url

  - dimension: subtotal
    type: number
    sql: ${TABLE}.subtotal

  - dimension: ticket_id
    sql: ${TABLE}.ticket_id

  - dimension: ticket_open_time
    sql: ${TABLE}.ticket_open_time

  - dimension: tip_percentage
    type: number
    sql: ${TABLE}.tip_percentage

  - measure: count
    type: count
    drill_fields: []

