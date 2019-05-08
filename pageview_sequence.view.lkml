view: pageview_sequence {
  sql_table_name: looker_8b0c0edb655a1bc8166e7fb926ec20f9.pageview_sequence ;;

  dimension: pageview_reverse_sequence {
    type: number
    sql: ${TABLE}.pageview_reverse_sequence ;;
  }

  dimension: pageview_sequence {
    type: number
    sql: ${TABLE}.pageview_sequence ;;
  }

  dimension: session_id {
    type: string
    sql: ${TABLE}.session_id ;;
  }

  dimension_group: sync {
    type: time
    timeframes: [
      raw,
      time,
      hour,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.sync_date ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
    link: {
      url: "{{value}}"
      label: "リンク"
    }
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
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

  measure: bounce_session_count {
    type: count_distinct
    sql: ${session_id} ;;
    filters: {
      field: pageview_reverse_sequence
      value: "1"
    }
    filters: {
      field: pageview_sequence
      value: "1"
    }
    drill_fields: [detail*]
  }

  measure: bounce_rate {
    type: number
    sql: ${bounce_session_count} / NULLIF(${session_count},0) ;;
    value_format_name: percent_2
    drill_fields: [detail*]
  }

  set: detail {
    fields: [sync_time, session_id, user_id, pageview_sequence, url]
  }
}
