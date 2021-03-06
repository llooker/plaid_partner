The following query is used to create the `access_device` table in KARTE Datahub that is the basis for the `access_device` view in this Looker Block.

```
{% set period_of_days = "180" %}

WITH view_data AS (
  SELECT
    user_id
    , session_id
    , sync_date
    , JSON_EXTRACT_SCALAR(values, '$.view.access.os.name') AS os_name
  FROM
    {{ karte_event("FORMAT_DATE('%Y%m%d', DATE_ADD(CURRENT_DATE, INTERVAL -" + period_of_days + " DAY))", "FORMAT_DATE('%Y%m%d', CURRENT_DATE)") }}
  WHERE
    event_name = 'view'
)

SELECT
　FORMAT_TIMESTAMP('%F %H', sync_date) as sync_hour
  , CASE
      WHEN os_name = "Windows" THEN "PC"
      WHEN os_name = "Mac OS" THEN "PC"
      WHEN os_name = "iOS" THEN "SP"
      WHEN os_name = "Android" THEN "SP"
      ELSE "その他"
    END AS device
  , COUNT(DISTINCT user_id) AS UU
  , COUNT(DISTINCT session_id) AS session_UU
  , COUNT(*) AS PV
FROM
  view_data
GROUP BY
  device, sync_hour
ORDER BY
  UU DESC
```
