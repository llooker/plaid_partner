- dashboard: web_access_analytics
  title: Web Access Analytics
  layout: newspaper
  elements:
  - name: Average Session Time by OS and Hour
    title: Average Session Time by OS and Hour
    model: collections
    explore: events
    type: looker_line
    fields: [events.average_session_length, events.session_start_hour, events.os_name]
    pivots: [events.os_name]
    sorts: [events.session_start_hour desc, events.os_name]
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
    stacking: ''
    limit_displayed_rows: false
    hidden_series: [events.session_count]
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: monotone
    listen:
      Date: events.sync_date
    row: 28
    col: 0
    width: 12
    height: 8
  - name: Portion of Sessions by OS
    title: Portion of Sessions by OS
    model: collections
    explore: events
    type: looker_bar
    fields: [events.session_count, events.os_name]
    pivots: [events.os_name]
    sorts: [events.session_count desc 0, events.os_name]
    limit: 500
    column_limit: 50
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      custom:
        id: 4aa78be8-f86c-ae2a-ce6b-30f96afa9eb9
        label: Custom
        type: discrete
        colors:
        - "#2aab9f"
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: percent
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    series_colors: {}
    show_value_labels: true
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
    listen:
      Date: events.sync_date
    row: 16
    col: 12
    width: 12
    height: 6
  - name: Count of Users
    title: Count of Users
    model: collections
    explore: events
    type: single_value
    fields: [events.session_count, events.user_count, events.visitor_count]
    limit: 500
    column_limit: 50
    series_types: {}
    hidden_fields: [events.session_count]
    listen:
      Date: events.sync_date
    row: 0
    col: 6
    width: 6
    height: 2
  - name: Portion of Sessions by Triggered Event
    title: Portion of Sessions by Triggered Event
    model: collections
    explore: events
    type: looker_bar
    fields: [events.event_name, events.session_count]
    pivots: [events.event_name]
    sorts: [events.session_count desc 0, events.event_name]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: bottom, series: [{axisId: demo_confirmation
              - events.session_count, id: demo_confirmation - events.session_count,
            name: demo_confirmation}, {axisId: enter_group - events.session_count,
            id: enter_group - events.session_count, name: enter_group}, {axisId: leave_group
              - events.session_count, id: leave_group - events.session_count, name: leave_group},
          {axisId: req - events.session_count, id: req - events.session_count, name: req},
          {axisId: view - events.session_count, id: view - events.session_count, name: view}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: percent
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: true
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
    listen:
      Date: events.sync_date
    row: 16
    col: 0
    width: 12
    height: 6
  - name: Session Count by Device and Hour of Day
    title: Session Count by Device and Hour of Day
    model: collections
    explore: events
    type: looker_column
    fields: [events.sync_hour_of_day, events.session_count, events.os_name]
    pivots: [events.os_name]
    fill_fields: [events.sync_hour_of_day]
    sorts: [events.os_name 0, events.sync_hour_of_day]
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
    listen:
      Date: events.sync_date
    row: 22
    col: 10
    width: 14
    height: 6
  - name: Session Count
    title: Session Count
    model: collections
    explore: events
    type: single_value
    fields: [events.session_count, events.user_count, events.visitor_count]
    limit: 500
    column_limit: 50
    series_types: {}
    listen:
      Date: events.sync_date
    row: 0
    col: 0
    width: 6
    height: 2
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
    col: 12
    width: 6
    height: 2
  - name: Most Popular Pages
    title: Most Popular Pages
    model: collections
    explore: events
    type: looker_bar
    fields: [events.path_name, events.session_count]
    filters:
      events.path_name: "-NULL"
    sorts: [events.session_count desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: bottom, series: [{axisId: events.session_count,
            id: events.session_count, name: Session Count}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: log}]
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
    limit_displayed_rows: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#000000"}]
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Date: events.sync_date
    row: 22
    col: 0
    width: 10
    height: 6
  - name: Events by Hours
    title: Events by Hours
    model: collections
    explore: events
    type: looker_line
    fields: [events.session_count, events.event_name, events.sync_hour]
    pivots: [events.event_name]
    sorts: [events.event_name 0, events.sync_hour]
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
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: monotone
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Date: events.sync_date
    row: 28
    col: 12
    width: 12
    height: 8
  - name: Average Session Minutes
    title: Average Session Minutes
    model: collections
    explore: events
    type: single_value
    fields: [events.average_session_length]
    limit: 500
    column_limit: 50
    listen:
      Date: events.session_start_date
    row: 0
    col: 18
    width: 6
    height: 2
  - name: Count of Session UU
    title: Count of Session UU
    model: collections
    explore: access_device
    type: single_value
    fields: [access_device.total_session_uu]
    limit: 500
    column_limit: 50
    series_types: {}
    listen:
      Date: access_device.date
    row: 2
    col: 6
    width: 6
    height: 2
  - name: Count of Unique Users
    title: Count of Unique Users
    model: collections
    explore: access_device
    type: single_value
    fields: [access_device.total_uu]
    limit: 500
    column_limit: 50
    series_types: {}
    listen:
      Date: access_device.date
    row: 2
    col: 12
    width: 6
    height: 2
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
    row: 2
    col: 0
    width: 6
    height: 2
  - name: Bounce Rate by Date
    title: Bounce Rate by Date
    model: collections
    explore: pageview_sequence
    type: looker_line
    fields: [pageview_sequence.bounce_rate, pageview_sequence.sync_date]
    fill_fields: [pageview_sequence.sync_date]
    sorts: [pageview_sequence.sync_date desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#000000"}]
    show_null_points: false
    interpolation: linear
    listen:
      Date: pageview_sequence.sync_date
    row: 4
    col: 12
    width: 12
    height: 4
  - name: Bounce Rate by Page
    title: Bounce Rate by Page
    model: collections
    explore: pageview_sequence
    type: table
    fields: [pageview_sequence.url, pageview_sequence.session_count, pageview_sequence.bounce_rate]
    sorts: [pageview_sequence.bounce_rate desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    limit_displayed_rows: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '20'
    enable_conditional_formatting: true
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          custom: {id: 280f2e9c-3984-a90f-1fdd-581c56efa6e1, label: Custom, type: continuous,
            stops: [{color: "#5be60c", offset: 0}, {color: "#ffffff", offset: 50},
              {color: "#bf4234", offset: 100}]}, options: {steps: 5, constraints: {
              mid: {type: number, value: 0}}, mirror: true}}, bold: false, italic: false,
        strikethrough: false, fields: [pageview_sequence.bounce_rate]}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    listen:
      Date: pageview_sequence.sync_date
    row: 4
    col: 0
    width: 12
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
      Date: pageview_sequence.sync_date
    row: 2
    col: 18
    width: 6
    height: 2
  - name: Pageviews by Date
    title: Pageviews by Date
    model: collections
    explore: access_device
    type: looker_line
    fields: [access_device.total_pv, access_device.date]
    fill_fields: [access_device.date]
    sorts: [access_device.date desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: []
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
    hidden_series: []
    legend_position: right
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#000000"}]
    show_null_points: false
    interpolation: linear
    hidden_fields: []
    listen:
      Date: access_device.date
    row: 12
    col: 12
    width: 12
    height: 4
  - name: Unique Users by Date
    title: Unique Users by Date
    model: collections
    explore: access_device
    type: looker_line
    fields: [access_device.date, access_device.total_uu]
    fill_fields: [access_device.date]
    sorts: [access_device.date desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: []
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
    hidden_series: []
    legend_position: right
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#000000"}]
    show_null_points: false
    interpolation: linear
    hidden_fields: []
    listen:
      Date: access_device.date
    row: 8
    col: 12
    width: 12
    height: 4
  - name: Average Session Time by OS
    title: Average Session Time by OS
    model: collections
    explore: events
    type: looker_column
    fields: [events.os_name, events.average_session_length]
    sorts: [events.average_session_length desc]
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
        color: "#000000"}]
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Date: events.sync_date
    row: 10
    col: 0
    width: 12
    height: 6
  filters:
  - name: Date
    title: Date
    type: date_filter
    default_value: 30 days
    allow_multiple_values: true
    required: false
