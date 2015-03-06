- view: batch_spender_stats
  sql_table_name: public.batch_spender_stats
  fields:

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: estimated_lifetime_value
    type: int
    sql: ${TABLE}.estimated_lifetime_value

  - dimension_group: last_visit
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.last_visit_date

  - dimension: last_visit_spent
    type: int
    sql: ${TABLE}.last_visit_spent

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

  - dimension: total_covers
    type: int
    sql: ${TABLE}.total_covers

  - dimension: total_spent
    type: int
    sql: ${TABLE}.total_spent

  - dimension: total_ticket_sales
    type: int
    sql: ${TABLE}.total_ticket_sales

  - dimension: total_tip
    type: int
    sql: ${TABLE}.total_tip

  - dimension: total_visits
    type: int
    sql: ${TABLE}.total_visits

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: []

