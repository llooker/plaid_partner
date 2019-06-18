view: events {
  sql_table_name: `prd-karte-per-client.looker_8b0c0edb655a1bc8166e7fb926ec20f9.events` ;;

  dimension: event_name {
    type: string
    sql: ${TABLE}.event_name ;;
  }

  dimension: os_name {
    type: string
    sql: ${TABLE}.os_name ;;
  }

  dimension: path_name {
    type: string
    sql: ${TABLE}.path_name ;;
  }

  dimension: session_id {
    type: string
    sql: ${TABLE}.session_id ;;
  }

  dimension: session_sequence {
    type: number
    sql: ${TABLE}.session_sequence ;;
  }

  dimension_group: sync {
    type: time
    timeframes: [
      raw,
      time,
      hour,
      hour_of_day,
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

  dimension: visitor_id {
    type: string
    sql: ${TABLE}.visitor_id ;;
  }

  dimension_group: session_start {
    type: time
    sql: ${TABLE}.session_start_time ;;
  }

  dimension_group: session_end {
    type: time
    sql: ${TABLE}.session_end_time ;;
  }

  dimension: session_duration_seconds {
    type: duration_second
    hidden: yes
    sql_start: ${session_start_raw} ;;
    sql_end: ${session_end_raw} ;;
  }

  dimension: session_duration_minute {
    type: number
    sql: ${session_duration_seconds} / 60 ;;
    value_format_name: decimal_2
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: session_count {
    type: count_distinct
    sql: ${session_id} ;;
    drill_fields: [detail*]
  }

  measure: user_count {
    type: count_distinct
    sql: ${user_id} ;;
    drill_fields: [detail*]
  }

  measure: visitor_count {
    type: count_distinct
    sql: ${visitor_id} ;;
    drill_fields: [detail*]
  }

  measure: average_session_length {
    type: average
    sql: ${session_duration_minute} ;;
    value_format_name: decimal_2
    drill_fields: [detail*]
  }

  set: detail {
    fields: [event_name, os_name, path_name]
  }
}
