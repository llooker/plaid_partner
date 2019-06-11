connection: "plaid-bigquery"

include: "*.view.lkml"                       # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

explore: access_device {
  label: "Access Device"
}

explore: events {
  label: "Events"
}

explore: pageview_sequence {
  label: "Sequenced Pageview"
  join: next_pageview {
    from: pageview_sequence
    relationship: many_to_one
    sql_on: ${pageview_sequence.session_id} = ${next_pageview.session_id}
      AND ${pageview_sequence.sync_raw} < ${next_pageview.sync_raw};;
  }
}

explore: event_1 {
  from: pageview_sequence
  label: "Visitor Flow"
  fields: [event_1.pageview_sequence, event_1.sync_date, event_1.export_set*,event_2.export_set*,event_3.export_set*,event_4.export_set*]
  always_filter: {
    filters: {
      field: event_1.pageview_sequence
      value: "1"
    }
  }
  join: event_2 {
    from: pageview_sequence
    relationship: many_to_one
    sql_on: ${event_1.session_id} = ${event_2.session_id}
      AND ${event_1.sync_raw} < ${event_2.sync_raw}
      AND ${event_2.pageview_sequence} = 2 ;;
  }

  join: event_3 {
    from: pageview_sequence
    relationship: many_to_one
    sql_on: ${event_2.session_id} = ${event_3.session_id}
      AND ${event_2.sync_raw} < ${event_3.sync_raw}
      AND ${event_3.pageview_sequence} = 3 ;;
  }

  join: event_4 {
    from: pageview_sequence
    relationship: many_to_one
    sql_on: ${event_3.session_id} = ${event_4.session_id}
      AND ${event_3.sync_raw} < ${event_4.sync_raw}
      AND ${event_4.pageview_sequence} = 4 ;;
  }

}
