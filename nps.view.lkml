view: nps {
  sql_table_name: looker_8b0c0edb655a1bc8166e7fb926ec20f9.nps ;;

  dimension: campaign_id {
    type: string
    sql: ${TABLE}.campaign_id ;;
  }

  dimension: question_1 {
    type: string
    sql: ${TABLE}.question_1 ;;
  }

  dimension: question_2 {
    type: string
    sql: ${TABLE}.question_2 ;;
  }

  dimension: shorten_id {
    type: string
    sql: ${TABLE}.shorten_id ;;
  }

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
}
