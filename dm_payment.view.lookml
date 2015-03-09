- view: dm_payment
  sql_table_name: public.dm_payment
  fields:

  - dimension: amount
    type: number
    sql: ${TABLE}.amount

  - dimension: auth_code
    type: int
    sql: ${TABLE}.auth_code

  - dimension: cardholder_name
    sql: ${TABLE}.cardholder_name

  - dimension: last_four
    sql: ${TABLE}.last_four

  - dimension_group: payment
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.payment_time

  - dimension: payment_type
    sql: ${TABLE}.payment_type

  - dimension: pretty_url
    sql: ${TABLE}.pretty_url

  - dimension_group: store_day
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.store_day

  - dimension: ticket_id
    type: int
    sql: ${TABLE}.ticket_id

  - dimension: tip
    type: number
    sql: ${TABLE}.tip

  - measure: count
    type: count
    drill_fields: [cardholder_name]
    
  - measure: sum_total_payment
    type: sum
    sql: ${amount}
    drill_fields: [pretty_url, store_day, ticket_id]

