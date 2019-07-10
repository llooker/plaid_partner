The following query is used to create the `nps` table in KARTE Datahub that is the basis for the `nps` view in this Looker Block.

```
-- Choose which NPS campaigns you want KARTE Datahub to include in your results below:
{% set campaign_ids = "XXXXXX" %}

{% set period_of_days = "180" %}

-- Add your KARTE API key
{% set api_key = "INSERT YOUR API KEY HERE" %}

-- Choose which segments you want KARTE Datahub to include in your results below:
{% set segment_ids = "XXXXX,XXXXX,XXXXX" %}

WITH segment_ids_array_for_conditions AS (
  SELECT
    SPLIT('{{segment_ids}}', ',') AS segment_ids
)
, unnested_for_conditions AS (
    SELECT
      REGEXP_REPLACE(segment_id, r'\s', '') AS segment_id
    FROM
      segment_ids_array_for_conditions, UNNEST(segment_ids) AS segment_id
)
, campaign_id_array AS (
  SELECT
    SPLIT('{{campaign_ids}}', ',') AS campaign_ids
)
, unnested_campaign_id AS (
    SELECT
      REGEXP_REPLACE(campaign_id, r'\s', '') AS campaign_id
    FROM
      campaign_id_array, UNNEST(campaign_ids) AS campaign_id
)
, event_data AS(
  SELECT
    user_id
    , sync_date
    , JSON_EXTRACT(values, '$._answer_question') _answer_question
    , REPLACE(JSON_EXTRACT(values, '$._answer_question._system.message.campaign_id'), '"', '') campaign_id
    , segments
  FROM
    {{ karte_event("FORMAT_DATE('%Y%m%d', DATE_ADD(CURRENT_DATE, INTERVAL -" + period_of_days + " DAY))", "FORMAT_DATE('%Y%m%d', CURRENT_DATE)") }}
  WHERE
    event_name = '_answer_question'
)
, score_data AS (
  SELECT
    user_id
    , sync_date
    , REPLACE(REGEXP_EXTRACT(_answer_question, r'\"question_1\":{\"\w+\":\[?([^\]^}]+)\]*}'), '"', '') score
    , REPLACE(REGEXP_EXTRACT(_answer_question, r'\"question_2\":{\"\w+\":\[?([^\]^}]+)\]*}'), '"', '') comment
    , campaign_id
    , segments
  FROM
    event_data
  WHERE
    REGEXP_EXTRACT(_answer_question, r'^{\"(\w+)\"') IN (SELECT * FROM unnested_campaign_id)
  )
, segment_ids_array AS (
  SELECT
    user_id
    , sync_date
    , campaign_id
    , score
    , comment
    , SPLIT(segments, ',') AS segments
  FROM
    score_data
)
, unnested_segment AS (
  SELECT
    user_id
    , sync_date
    , campaign_id
    , score
    , comment
    , segment_id
  FROM
    segment_ids_array, UNNEST(segments) AS segment_id
)
, segment_master AS (
  SELECT
    id
    , name
  FROM
    `karte-data.karte_stream_{{api_key}}.karte_segment`
)
, aggregate_data AS (
  SELECT
    a.user_id AS user_id
    , a.sync_date
    , a.score AS score
    , a.comment
    , a.campaign_id
    , a.segment_id AS segment_id
    , b.name AS segment_name
  FROM unnested_segment AS a
  INNER JOIN
    segment_master AS b
  ON
    a.segment_id = b.id
)

SELECT
  user_id
  , segment_id
  , sync_date
  , segment_name
  , score
  , comment
  , campaign_id
  -- , SUM(CASE WHEN score in ("0", "1", "2", "3", "4", "5", "6") THEN 1 ELSE 0 END) AS detractors --批判者の数
  -- , SUM(CASE WHEN score in ("7", "8") THEN 1 ELSE 0 END) AS passives --中立者の数
  -- , SUM(CASE WHEN score in ("9", "10") THEN 1 ELSE 0 END) AS promoters --推奨者の数
FROM
  aggregate_data
WHERE
  segment_id in (SELECT * FROM unnested_for_conditions)
GROUP BY
  1,2,3,4,5,6,7
```
