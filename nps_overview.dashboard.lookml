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
    row: 0
    col: 4
    width: 8
    height: 8
  - name: Average NPS
    title: Average NPS
    model: collections
    explore: nps
    type: single_value
    fields: [nps.average_nps_score, nps.user_count]
    limit: 500
    column_limit: 50
    series_types: {}
    row: 0
    col: 0
    width: 4
    height: 4
  - name: Average NPS by Date
    title: Average NPS by Date
    model: collections
    explore: nps
    type: looker_line
    fields: [nps.average_nps_score, nps.sync_date]
    fill_fields: [nps.sync_date]
    sorts: [nps.sync_date desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: NPS, orientation: left, series: [{axisId: nps.average_nps_score,
            id: nps.average_nps_score, name: Average Nps Score}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
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
    row: 8
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
    row: 0
    col: 12
    width: 12
    height: 8
  - name: Average NPS by Segment
    title: Average NPS by Segment
    model: collections
    explore: nps
    type: looker_column
    fields: [nps.average_nps_score, nps.segment_name]
    sorts: [nps.average_nps_score desc]
    limit: 500
    query_timezone: Asia/Tokyo
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
        margin_value: mean, margin_bottom: deviation, label_position: right, color: "#72D16D",
        range_start: '8', label: Promoters, range_end: '10'}, {reference_type: range,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#FBB555", range_start: '6', range_end: '8', label: Neutral}, {reference_type: range,
        line_value: mean, margin_top: deviation, margin_value: mean, margin_bottom: deviation,
        label_position: right, color: "#B32F37", range_start: '0', range_end: '6',
        label: Detractors}]
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    row: 8
    col: 0
    width: 12
    height: 8
  - name: NPS Responder Count
    title: NPS Responder Count
    model: collections
    explore: nps
    type: single_value
    fields: [nps.average_nps_score, nps.user_count]
    limit: 500
    column_limit: 50
    series_types: {}
    hidden_fields: [nps.average_nps_score]
    row: 4
    col: 0
    width: 4
    height: 4
