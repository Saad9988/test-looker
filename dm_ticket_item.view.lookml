- view: dm_ticket_item
  sql_table_name: public.dm_ticket_item
  fields:

  - dimension: category
    sql: ${TABLE}.category

  - dimension: item_id
    type: int
    sql: ${TABLE}.item_id

  - dimension: item_name
    sql: ${TABLE}.item_name

  - dimension: pretty_url
    sql: ${TABLE}.pretty_url

  - dimension: quantity
    type: int
    sql: ${TABLE}.quantity

  - dimension_group: store_day
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.store_day

  - dimension: subcategory
    sql: ${TABLE}.subcategory

  - dimension: ticket_id
    type: int
    sql: ${TABLE}.ticket_id

  - dimension: unit_price
    type: number
    sql: ${TABLE}.unit_price

  - measure: count
    type: count
    drill_fields: [item_name]

