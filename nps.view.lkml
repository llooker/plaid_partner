view: nps {
  sql_table_name: `prd-karte-per-client.@{dataset_name}.nps` ;;

  dimension: primary_key {
    type: string
    primary_key: yes
    hidden: yes
    sql: CONCAT(${user_id}, '-', ${segment_name}, '-', CAST(${sync_raw} AS string)) ;;
  }

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


# CONCAT('https://admin.karte.io/p/54f6e8519fa855000006629e/user/', user_id) AS user_url
  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
    link: {
      label: "KARTE User Story"
      icon_url: "https://admin.karte.io/images/baisu/logo_mark.svg"
      url: "https://admin.karte.io/p/5cb424903f26a2098d000174/user/{{value}}"
    }
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: responder_count {
    type: count_distinct
    sql: ${user_id} ;;
  }

  measure: promoter_count {
    type: count_distinct
    sql: ${user_id} ;;
    filters: {
      field: nps_category
      value: "1. PROMOTER"
    }
  }

  measure: detractor_count {
    type: count_distinct
    sql: ${user_id} ;;
    filters: {
      field: nps_category
      value: "3. DETRACTOR"
    }
  }

  measure: neutral_count {
    type: count_distinct
    sql: ${user_id} ;;
    filters: {
      field: nps_category
      value: "2. NEUTRAL"
    }
  }

  measure: net_promoter_score {
    type: number
    sql: 100.0* (${promoter_count} - ${detractor_count}) / NULLIF(${user_count},0) ;;
    value_format_name: decimal_2
    drill_fields: [detail*]
  }

  measure: average_score {
    type: average_distinct
    sql_distinct_key: ${primary_key} ;;
    sql: ${score} ;;
    value_format: "#.00"
    drill_fields: [detail*]
  }

  measure: user_count {
    type: count_distinct
    sql: ${user_id} ;;
    drill_fields: [detail*]
  }

  measure: cumulative_responder_count {
    type: running_total
    sql: ${user_count} ;;
    drill_fields: [detail*]
  }

  measure: cumulative_promoter_count {
    type: running_total
    sql: ${promoter_count} ;;
    drill_fields: [detail*]
  }

  measure: cumulative_detractor_count {
    type: running_total
    sql: ${detractor_count} ;;
    drill_fields: [detail*]
  }

  measure: segment_list {
    type: string
    sql: ARRAY_AGG(DISTINCT ${segment_name}) ;;
  }

  set: detail {
    fields: [campaign_id, sync_date, user_id, score, comment, segment_list]
  }
}
