- dashboard: thankyou_next
  title: THANKYOU_NEXT
  layout: newspaper
  preferred_viewer: dashboards-next
  query_timezone: query_saved
  elements:
  - name: Eric
    type: text
    title_text: Eric
    body_text: Hello
    row: 0
    col: 0
    width: 8
    height: 6
  - title: API_TILE
    name: API_TILE
    model: eric_likes_bears
    explore: users
    type: looker_column
    fields: [users.state, users.count]
    sorts: [users.count desc]
    limit: 500
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: 'if(${rank}=1,
          ${users.count}, null)', value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number}, {table_calculation: calculation_2,
        label: Calculation 2, expression: 'if(${rank}=2, ${users.count}, null)', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}, {
        table_calculation: rank, label: rank, expression: 'rank(${users.count}, ${users.count})',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
    query_timezone: UTC
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
    limit_displayed_rows: true
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
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: 471a8295-662d-46fc-bd2d-2d0acd370c1e
      options:
        steps: 5
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '2'
    series_colors:
      calculation_1: "#ad9bf5"
      calculation_2: "#72D16D"
    label_color: []
    defaults_version: 1
    hidden_fields: [rank, users.count]
    y_axes: []
    listen:
      State: users.state
    row: 0
    col: 8
    width: 8
    height: 6
  - title: Untitled
    name: Untitled
    model: eric_likes_bears
    explore: users
    type: Treemap
    fields: [users.city, users.state, users.country, users.count]
    sorts: [users.city]
    limit: 500
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    series_types: {}
    defaults_version: 0
    listen:
      State: users.state
    row: 0
    col: 16
    width: 8
    height: 6
  filters:
  - name: State
    title: State
    type: field_filter
    default_value: New Jersey
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: eric_likes_bears
    explore: users
    listens_to_filters: []
    field: users.state
