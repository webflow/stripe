with events as (

  select * from {{ref('stripe_events')}}

)

select
  data__object__id as id,
  data__object__description as name,
  data__object__email as email,
  created as created_at,
  event_type,
  wf_user_id
from events
where event_type in ('customer.deleted', 'customer.created', 'customer.updated')
