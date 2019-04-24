view: access_device {
  sql_table_name: looker_8b0c0edb655a1bc8166e7fb926ec20f9.access_device ;;


  dimension: sync_hour {
    type: string
    hidden: yes
    sql: ${TABLE}.sync_hour ;;
  }

  dimension: date {
    type: date
    sql: CAST(SUBSTR(${sync_hour}, 1, 10) AS TIMESTAMP) ;;
  }

  dimension: hour_of_day {
    type: number
    sql: SUBSTR(${sync_hour}, 12, 2) ;;
  }

  dimension: hour {
    type: date_raw
    sql: CAST(CONCAT(CONCAT(CONCAT(CAST(${date} AS STRING), ' '), ${hour_of_day}), ':00:00') AS TIMESTAMP) ;;
  }

  dimension: device {
    type: string
    sql: ${TABLE}.device ;;
  }

  dimension: pv {
    type: number
    sql: ${TABLE}.PV ;;
  }

  dimension: session_uu {
    type: number
    sql: ${TABLE}.session_UU ;;
  }

  dimension: uu {
    type: number
    sql: ${TABLE}.UU ;;
  }

  measure: total_pv {
    type: sum
    sql: ${pv} ;;
  }

  measure: average_pv {
    type: average
    sql: ${pv} ;;
    value_format_name: decimal_2
  }

  measure: total_session_uu {
    type: sum
    sql: ${session_uu} ;;
  }

  measure: average_session_uu {
    type: average
    sql: ${session_uu} ;;
    value_format_name: decimal_2
  }

  measure: total_uu {
    type: sum
    sql: ${uu} ;;
  }

  measure: average_uu {
    type: average
    sql: ${uu} ;;
    value_format_name: decimal_2
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
