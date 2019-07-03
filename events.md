The following query is used to create the `events` table in KARTE Datahub that is the basis for the `events` view in this Looker Block.

```
{% set period_of_days = "180" %}

SELECT
  sync_date
  , user_id
  , visitor_id
  , session_id
  , event_name
  , JSON_EXTRACT_SCALAR(values, '$.req.pathname') AS path_name
  , JSON_EXTRACT_SCALAR(values, '$.view.access.os.name') AS os_name
  , MIN(sync_date) OVER (PARTITION BY session_id) AS session_start_time
  , MAX(sync_date) OVER (PARTITION BY session_id) AS session_end_time
  , RANK() OVER (PARTITION BY user_id, session_id ORDER BY session_id) AS session_sequence
FROM
   {{ karte_event("FORMAT_DATE('%Y%m%d', DATE_ADD(CURRENT_DATE, INTERVAL -" + period_of_days + " DAY))", "FORMAT_DATE('%Y%m%d', CURRENT_DATE)") }}
```
