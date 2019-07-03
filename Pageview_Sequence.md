```
{% set period_of_days = "180" %}

SELECT
  user_id
  , session_id
  , sync_date
  , JSON_EXTRACT_SCALAR(values, '$.view.access.uri.url') AS url
  , ROW_NUMBER() over (PARTITION BY user_id, session_id ORDER BY sync_date) AS pageview_sequence
  , ROW_NUMBER() over (PARTITION BY user_id, session_id ORDER BY sync_date DESC) AS pageview_reverse_sequence
FROM
  {{ karte_event("FORMAT_DATE('%Y%m%d', DATE_ADD(CURRENT_DATE, INTERVAL -" + period_of_days + " DAY))", "FORMAT_DATE('%Y%m%d', CURRENT_DATE)") }}
WHERE
  event_name = 'view'
```
