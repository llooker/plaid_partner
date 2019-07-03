- dashboard: nps_overview
  title: NPS Overview
  layout: newspaper
  elements:
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
    listen:
      Date: nps.sync_date
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
    listen:
      Date: events.sync_date
    row: 0
    col: 10
    width: 5
    height: 3
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
    listen:
      Date: nps.sync_date
    row: 0
    col: 0
    width: 5
    height: 3
  - name: Pageviews
    title: Pageviews
    model: collections
    explore: access_device
    type: single_value
    fields: [access_device.total_pv]
    limit: 500
    column_limit: 50
    series_types: {}
    listen:
      Date: access_device.date
    row: 0
    col: 15
    width: 5
    height: 3
  - name: Portion of Net Promoters
    title: Portion of Net Promoters
    model: collections
    explore: nps
    type: looker_pie
    fields: [nps.user_count, nps.nps_category]
    sorts: [nps.nps_category]
    limit: 500
    column_limit: 50
    value_labels: labels
    label_type: labPer
    inner_radius: 40
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
    listen:
      Date: nps.sync_date
    row: 3
    col: 0
    width: 7
    height: 6
  - name: Bounce Rate
    title: Bounce Rate
    model: collections
    explore: pageview_sequence
    type: single_value
    fields: [pageview_sequence.bounce_rate]
    limit: 500
    column_limit: 50
    series_types: {}
    listen:
      Date: next_pageview.sync_date
    row: 0
    col: 20
    width: 4
    height: 3
  - name: NPS by Segment
    title: NPS by Segment
    model: collections
    explore: nps
    type: looker_line
    fields: [nps.segment_name, nps.user_count, nps.net_promoter_score]
    sorts: [nps.net_promoter_score desc]
    limit: 500
    query_timezone: Asia/Tokyo
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
        reverse: true
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: nps.user_count, id: nps.user_count,
            name: User Count}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: nps.net_promoter_score, id: nps.net_promoter_score, name: Net
              Promoter Score}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    hide_legend: true
    legend_position: center
    series_types:
      nps.net_promoter_score: column
      nps.user_count: scatter
    point_style: circle
    series_colors:
      nps.user_count: "#E57947"
    series_point_styles:
      nps.user_count: square
    show_value_labels: true
    label_density: 25
    label_color: ["#E57947", transparent]
    x_axis_scale: auto
    y_axis_combined: true
    reference_lines: []
    show_null_points: true
    interpolation: monotone
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: []
    listen:
      Date: nps.sync_date
    row: 9
    col: 0
    width: 12
    height: 8
  - name: Responders by Score
    title: Responders by Score
    model: collections
    explore: nps
    type: looker_pie
    fields: [nps.user_count, nps.score]
    sorts: [nps.score]
    limit: 500
    column_limit: 50
    value_labels: labels
    label_type: labPer
    inner_radius: 40
    series_labels:
      '0': '0'
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
    listen:
      Date: nps.sync_date
    row: 3
    col: 7
    width: 7
    height: 6
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
    listen:
      Date: nps.sync_date
    row: 9
    col: 12
    width: 12
    height: 8
  - name: NPS by Date
    title: NPS by Date
    model: collections
    explore: nps
    type: looker_line
    fields: [nps.sync_date, nps.cumulative_responder_count, nps.cumulative_promoter_count,
      nps.cumulative_detractor_count]
    fill_fields: [nps.sync_date]
    sorts: [nps.sync_date]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: nps, label: NPS, expression: '100.0 * (${nps.cumulative_promoter_count}
          - ${nps.cumulative_detractor_count}) / ${nps.cumulative_responder_count}',
        value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
        _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: NPS, orientation: left, series: [{axisId: nps, id: nps, name: NPS}],
        showLabels: true, showValues: true, maxValue: 100, unpinAxis: false, tickDensity: default,
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
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: circle_outline
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    reference_lines: []
    show_null_points: false
    interpolation: monotone
    hidden_fields: [nps.cumulative_responder_count, nps.cumulative_promoter_count,
      nps.cumulative_detractor_count]
    listen:
      Date: nps.sync_date
    row: 3
    col: 14
    width: 10
    height: 6
  - name: Response Details
    title: Response Details
    model: collections
    explore: nps
    type: table
    fields: [nps.user_id, nps.sync_date, nps.score, nps.nps_category, nps.comment,
      nps.campaign_id]
    sorts: [nps.sync_date desc]
    limit: 500
    query_timezone: Asia/Tokyo
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    listen:
      Date: nps.sync_date
    row: 17
    col: 0
    width: 24
    height: 8
  filters:
  - name: Date
    title: Date
    type: field_filter
    default_value: 30 days
    allow_multiple_values: true
    required: false
    model: collections
    explore: nps
    listens_to_filters: []
    field: nps.sync_date
