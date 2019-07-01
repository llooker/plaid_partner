- dashboard: nps_overview
  title: NPS Overview
  layout: newspaper
  elements:
  - name: Portion of Net Promoters
    title: Portion of Net Promoters
    model: collections
    explore: nps
    type: looker_pie
    fields: [nps.user_count, nps.nps_category]
    sorts: [nps.nps_category]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    value_labels: labels
    label_type: labPer
    row: 3
    col: 0
    width: 8
    height: 8
  - name: Average NPS
    title: Average NPS
    model: collections
    explore: nps
    type: single_value
    fields: [nps.net_promoter_score, nps.average_score, nps.user_count]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    custom_color: ''
    show_single_value_title: true
    single_value_title: NPS
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    series_types: {}
    hidden_fields: []
    y_axes: []
    row: 0
    col: 0
    width: 5
    height: 3
  - name: NPS by Date
    title: NPS by Date
    model: collections
    explore: nps
    type: looker_line
    fields: [nps.sync_date, nps.net_promoter_score]
    fill_fields: [nps.sync_date]
    sorts: [nps.net_promoter_score desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: NPS, orientation: left, series: [{axisId: nps.average_score,
            id: nps.average_score, name: Average Nps Score}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: ''
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: circle_outline
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#000000"}]
    show_null_points: false
    interpolation: monotone
    hidden_fields: []
    row: 19
    col: 12
    width: 12
    height: 8
  - name: Responses by NPS
    title: Responses by NPS
    model: collections
    explore: nps
    type: looker_column
    fields: [nps.sync_date, nps.user_count, nps.nps_category]
    pivots: [nps.nps_category]
    fill_fields: [nps.sync_date]
    sorts: [nps.sync_date desc, nps.nps_category desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: 3 - nps.user_count,
            id: 3 - nps.user_count, name: '3'}, {axisId: 4 - nps.user_count, id: 4
              - nps.user_count, name: '4'}, {axisId: 5 - nps.user_count, id: 5 - nps.user_count,
            name: '5'}, {axisId: 6 - nps.user_count, id: 6 - nps.user_count, name: '6'},
          {axisId: 8 - nps.user_count, id: 8 - nps.user_count, name: '8'}, {axisId: 10
              - nps.user_count, id: 10 - nps.user_count, name: '10'}], showLabels: true,
        showValues: true, valueFormat: '', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: ''
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: right
    series_types: {}
    point_style: circle
    series_colors:
      1. PROMOTER - nps.user_count: "#72D16D"
      2. NEUTRAL - nps.user_count: "#FBB555"
      3. DETRACTOR - nps.user_count: "#B32F37"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: monotone
    hidden_fields: []
    row: 11
    col: 12
    width: 12
    height: 8
  - name: NPS by KARTE Segment
    title: NPS by KARTE Segment
    model: collections
    explore: nps
    type: looker_column
    fields: [nps.segment_name, nps.net_promoter_score]
    sorts: [nps.net_promoter_score desc]
    limit: 500
    query_timezone: Asia/Tokyo
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: []
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#000000"}, {reference_type: range, line_value: mean, margin_top: deviation,
        margin_value: mean, margin_bottom: deviation, label_position: left, color: "#72D16D",
        range_start: '0.8', label: Promoter, range_end: '1'}, {reference_type: range,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: left,
        color: "#FBB555", range_start: '0.6', range_end: '0.8', label: Neutral}, {
        reference_type: range, line_value: mean, margin_top: deviation, margin_value: mean,
        margin_bottom: deviation, label_position: left, color: "#B32F37", range_start: '0',
        range_end: '0.6', label: Detractor}]
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: []
    row: 11
    col: 0
    width: 12
    height: 8
  - name: NPS Responder Count
    title: NPS Responder Count
    model: collections
    explore: nps
    type: single_value
    fields: [nps.net_promoter_score, nps.average_score, nps.user_count]
    limit: 500
    column_limit: 50
    series_types: {}
    hidden_fields: [nps.average_score, nps.net_promoter_score]
    y_axes: []
    row: 0
    col: 5
    width: 5
    height: 3
  - name: Visitor Count
    title: Visitor Count
    model: collections
    explore: events
    type: single_value
    fields: [events.session_count, events.user_count, events.visitor_count]
    limit: 500
    column_limit: 50
    series_types: {}
    hidden_fields: [events.session_count, events.user_count]
    row: 0
    col: 10
    width: 5
    height: 3
  - name: Average Session Time by OS and Date
    title: Average Session Time by OS and Date
    model: collections
    explore: events
    type: looker_column
    fields: [events.average_session_length, events.os_name, events.session_start_date]
    pivots: [events.os_name]
    fill_fields: [events.session_start_date]
    sorts: [events.os_name, events.session_start_date desc]
    limit: 500
    column_limit: 50
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
        reverse: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    hidden_series: [events.session_count]
    legend_position: center
    series_types: {}
    point_style: none
    series_colors: {}
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: monotone
    row: 3
    col: 8
    width: 16
    height: 8
  - name: Events by Date
    title: Events by Date
    model: collections
    explore: events
    type: looker_column
    fields: [events.session_count, events.event_name, events.sync_date]
    pivots: [events.event_name]
    fill_fields: [events.sync_date]
    filters:
      events.sync_date: 30 days
    sorts: [events.event_name 0, events.sync_date desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: monotone
    row: 19
    col: 0
    width: 12
    height: 8
  - name: Pageviews
    title: Pageviews
    model: collections
    explore: access_device
    type: single_value
    fields: [access_device.total_pv]
    limit: 500
    column_limit: 50
    series_types: {}
    row: 0
    col: 15
    width: 5
    height: 3
  - name: Bounce Rate
    title: Bounce Rate
    model: collections
    explore: pageview_sequence
    type: single_value
    fields: [pageview_sequence.bounce_rate]
    limit: 500
    column_limit: 50
    series_types: {}
    row: 0
    col: 20
    width: 4
    height: 3
