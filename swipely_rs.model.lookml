- connection: prod-rs

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: batch_spender_stats

- explore: last_spender_visits

- explore: pipeline_brand_spender_profiles

- explore: pipeline_spender_tickets

- explore: pipeline_store_daily_spenders

- explore: pipeline_store_daily_spenders_new

- explore: pipeline_store_spender_profiles

- explore: real_time_spends
  joins:
    - join:  pipeline_store_spender_profiles
      foreign_key: spender_id

- explore: spender_cards

- explore: spender_profiles

- explore: dm_ticket

- explore: dm_ticket_item
  joins:
    - join: dm_ticket
    - sql_on: ${dm_ticket_item.ticket_id} = ${dm_ticket.ticket_id} AND ${dm_ticket_item.PRETTY_URL} = ${dm_ticket.PRETTY_URL} AND ${dm_ticket_item.STORE_DAY} = ${dm_ticket.STORE_DAY}

