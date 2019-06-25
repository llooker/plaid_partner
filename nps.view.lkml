view: nps {
  sql_table_name: `prd-karte-per-client.@{dataset_name}.nps` ;;

  dimension: campaign_id {
    type: string
    sql: ${TABLE}.campaign_id ;;
  }

  dimension: score {
    type: number
    sql: CAST(${TABLE}.score as NUMERIC) ;;
  }

  dimension: nps_category {
    type: string
    sql:
      CASE
        WHEN ${score} <= 3 THEN '3. DETRACTOR'
        WHEN ${score} >= 7 THEN '1. PROMOTER'
        ELSE '2. NEUTRAL'
      END ;;
  }

  dimension: comment {
    type: string
    sql: ${TABLE}.comment ;;
  }

  dimension: segment_name {
    type: string
    sql: ${TABLE}.segment_name ;;
  }

#   dimension: shorten_id {
#     type: string
#     sql: ${TABLE}.shorten_id ;;
#   }

  dimension_group: sync {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.sync_date ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: average_nps_score {
    type: average_distinct
    sql_distinct_key: ${user_id} ;;
    sql: ${score} ;;
    value_format: "#.00"
    drill_fields: [detail*]
  }

  measure: user_count {
    type: count_distinct
    sql: ${user_id} ;;
    drill_fields: [detail*]
  }

  set: detail {
    fields: [campaign_id, sync_date, segment_name, user_id, score, comment]
  }
}
