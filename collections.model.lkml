connection: "plaid-bigquery"

include: "*.view.lkml"                       # include all views in this project
include: "*.dashboard.lookml"   # include a LookML dashboard called my_dashboard

datagroup: every_10_minutes {
  max_cache_age: "10 minutes"
}

persist_with: every_10_minutes

explore: access_device {
  label: "(1) Events by Device"
}

explore: events {
  label: "(2) Events"
}

explore: pageview_sequence {
  label: "(3) Pageviews"
  join: next_pageview {
    from: pageview_sequence
    relationship: many_to_one
    sql_on: ${pageview_sequence.session_id} = ${next_pageview.session_id}
      AND ${pageview_sequence.sync_raw} < ${next_pageview.sync_raw};;
  }
}

explore: event_1 {
  from: pageview_sequence
  label: "(4) Visitor Journey"
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

explore: nps {
  label: "(5) Net Promoter Score"
}
