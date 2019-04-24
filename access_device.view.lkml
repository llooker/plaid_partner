view: access_device {
  sql_table_name: looker_8b0c0edb655a1bc8166e7fb926ec20f9.access_device ;;

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      hour,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.sync_hour ;;
  }

  dimension: test {
    type: string
    sql: ${TABLE}.sync_hour ;;
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
