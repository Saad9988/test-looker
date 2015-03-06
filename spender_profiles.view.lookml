- view: spender_profiles
  sql_table_name: public.spender_profiles
  fields:

  - dimension: cardholder_name
    sql: ${TABLE}.cardholder_name

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: email
    sql: ${TABLE}.email

  - dimension: pretty_url
    sql: ${TABLE}.pretty_url

  - dimension: profile_name
    sql: ${TABLE}.profile_name

  - dimension: spender_id
    sql: ${TABLE}.spender_id

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [profile_name, cardholder_name]

