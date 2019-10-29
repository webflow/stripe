
{{ dbt_utils.date_spine(
    datepart="day",
    start_date="'2013-05-15'",
    end_date="dateadd(week, 1, current_date)"
   )
}}
