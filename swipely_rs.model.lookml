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

- explore: spender_cards

- explore: spender_profiles

