{% set events_table_relation = var('events_table') %}

select
  {{ dbt_utils.star(from=var('events_table'), except=["type"]) }},
  {% if target.type == "snowflake" %}
    type
  {% else %}
    "type"
  {% endif %} as event_type
from {{ var('events_table') }}
where livemode = true
