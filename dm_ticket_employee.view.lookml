- view: dm_ticket_employee
  sql_table_name: public.dm_ticket_employee
  fields:

  - dimension: employee_id
    type: int
    sql: ${TABLE}.employee_id

  - dimension: first_name
    sql: ${TABLE}.first_name

  - dimension: last_name
    sql: ${TABLE}.last_name

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

  - measure: count
    type: count
    drill_fields: [first_name, last_name]

