- dashboard: eric_live_test
  title: ERIC_NEW_4
  layout: newspaper
  preferred_viewer: dashboards
  query_timezone: America/New_York
  elements:
  - title: Hello Evy
    name: Hello Evy
    model: eric_likes_bears
    explore: orders
    type: single_value
    fields: [orders.count]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen: {}
    row: 0
    col: 0
    width: 8
    height: 6
