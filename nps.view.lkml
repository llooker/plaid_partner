view: nps {
  sql_table_name: `prd-karte-per-client.looker_8b0c0edb655a1bc8166e7fb926ec20f9.nps` ;;

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
        WHEN ${score} <= 3 THEN 'DETRACTOR'
        WHEN ${score} >= 7 THEN 'PROMOTER'
        ELSE 'NEUTRAL'
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
    drill_fields: []
  }

  measure: average_nps_score {
    type: average
    sql: ${score} ;;
    value_format: "#.00"
  }

  measure: user_count {
    type: count_distinct
    sql: ${user_id} ;;
  }
}
