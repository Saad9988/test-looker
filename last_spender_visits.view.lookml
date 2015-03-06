- view: last_spender_visits
  sql_table_name: public.last_spender_visits
  fields:

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: loyalty_member
    type: yesno
    sql: ${TABLE}.loyalty_member

  - dimension: pretty_url
    sql: ${TABLE}.pretty_url

  - dimension_group: settled
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.settled_on

  - dimension: spender_id
    sql: ${TABLE}.spender_id

  - dimension: spent
    type: int
    sql: ${TABLE}.spent

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension_group: visit
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.visit_date

  - measure: count
    type: count
    drill_fields: []

