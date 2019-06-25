- dashboard: pageview_funnel
  title: Pageview Funnel
  layout: newspaper
  elements:
  - name: Most Popular Visitor Flows
    title: Most Popular Visitor Flows
    model: collections
    explore: event_1
    type: table
    fields: [event_1.count, event_1.cleaned_url, event_2.cleaned_url, event_3.cleaned_url,
      event_4.cleaned_url]
    filters:
      event_1.pageview_sequence: '1'
    sorts: [event_1.count desc]
    limit: 500
    query_timezone: Asia/Tokyo
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    series_labels:
      event_1.url: Page 1
      event_2.url: Page 2
      event_3.url: Page 3
      event_4.url: Page 4
      event_1.cleaned_url: Page 1
      event_2.cleaned_url: Page 2
      event_3.cleaned_url: Page 3
      event_4.cleaned_url: Page 4
      event_1.count: Count
    table_theme: gray
    limit_displayed_rows: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '40'
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    listen:
      Session Date: event_1.sync_date
    row: 7
    col: 0
    width: 12
    height: 12
  - name: Most Common Fourth Page
    title: Most Common Fourth Page
    model: collections
    explore: event_1
    type: looker_bar
    fields: [event_4.session_count, event_4.cleaned_url]
    filters:
      event_1.pageview_sequence: '1'
    sorts: [event_4.session_count desc]
    limit: 500
    column_limit: 50
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      custom:
        id: a01a163d-be7f-7365-75c1-ead7c2139e13
        label: Custom
        type: discrete
        colors:
        - "#2AAB9F"
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
      Session Date: event_1.sync_date
    row: 27
    col: 12
    width: 12
    height: 8
  - name: Most Common Third Page
    title: Most Common Third Page
    model: collections
    explore: event_1
    type: looker_bar
    fields: [event_3.session_count, event_3.cleaned_url]
    filters:
      event_1.pageview_sequence: '1'
    sorts: [event_3.session_count desc]
    limit: 500
    column_limit: 50
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      custom:
        id: c0f30c86-df02-dbf3-4480-64b6c75bb0b9
        label: Custom
        type: discrete
        colors:
        - "#2AAB9F"
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
      Session Date: event_1.sync_date
    row: 27
    col: 0
    width: 12
    height: 8
  - name: Most Common First Pages
    title: Most Common First Pages
    model: collections
    explore: event_1
    type: looker_bar
    fields: [event_1.session_count, event_1.cleaned_url]
    filters:
      event_1.pageview_sequence: '1'
    sorts: [event_1.session_count desc]
    limit: 500
    column_limit: 50
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      custom:
        id: a3b3aca1-6043-ce2d-cc11-d81f3159133a
        label: Custom
        type: discrete
        colors:
        - "#2AAB9F"
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
      Session Date: event_1.sync_date
    row: 19
    col: 0
    width: 12
    height: 8
  - name: Most Common Second Pages
    title: Most Common Second Pages
    model: collections
    explore: event_1
    type: looker_bar
    fields: [event_2.session_count, event_2.cleaned_url]
    filters:
      event_1.pageview_sequence: '1'
    sorts: [event_2.session_count desc]
    limit: 500
    column_limit: 50
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      custom:
        id: 6bd9b103-75fb-ed46-e920-03eef8ac4ac8
        label: Custom
        type: discrete
        colors:
        - "#2AAB9F"
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
      Session Date: event_1.sync_date
    row: 19
    col: 12
    width: 12
    height: 8
  - name: Basic Funnel
    title: Basic Funnel
    model: collections
    explore: event_1
    type: looker_column
    fields: [event_1.session_count, event_2.session_count, event_3.session_count,
      event_4.session_count]
    filters:
      event_1.pageview_sequence: '1'
    limit: 500
    query_timezone: Asia/Tokyo
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      custom:
        id: fa7b5451-b1f2-9db7-3a65-06e3767d29fb
        label: Custom
        type: discrete
        colors:
        - "#2AAB9F"
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
    stacking: ''
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
    show_dropoff: true
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Session Date: event_1.sync_date
    row: 0
    col: 0
    width: 24
    height: 7
  - name: Popular Pages after Homepage
    title: Popular Pages after Homepage
    model: collections
    explore: event_1
    type: sankey
    fields: [event_1.count, event_1.cleaned_url, event_2.cleaned_url]
    filters:
      event_1.pageview_sequence: '1'
      event_1.cleaned_url: "/"
      event_2.cleaned_url: ''
    sorts: [event_1.count desc]
    limit: 50
    query_timezone: Asia/Tokyo
    color_range: ["#2AAB9F"]
    show_null_points: true
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    series_labels:
      event_1.url: Page 1
      event_2.url: Page 2
      event_3.url: Page 3
      event_4.url: Page 4
    table_theme: gray
    limit_displayed_rows: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '40'
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    listen:
      Session Date: event_1.sync_date
    row: 7
    col: 12
    width: 12
    height: 12
  filters:
  - name: Session Date
    title: Session Date
    type: field_filter
    default_value: 30 days
    allow_multiple_values: true
    required: false
    model: collections
    explore: event_1
    listens_to_filters: []
    field: event_1.sync_date
