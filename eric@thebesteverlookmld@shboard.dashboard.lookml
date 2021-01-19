- dashboard: eric@thebesteverlookmld@shboard
  title: Eric@Thebesteverlookmld@Shboard



  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Test Tile
    name: Test Tile
    model: eric_likes_bears
    explore: users
    type: looker_line
    fields: [users.count1, users.count2, users.count, users.state]
    sorts: [users.count1 desc]
    limit: 500
    dynamic_fields: [{table_calculation: percent, label: Percent, expression: "${users.count2}/${users.count1}",
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: percent_2, label: Percent 2, expression: "${users.count1}/${users.count2}",
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
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
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: Hello World, orientation: left, series: [{axisId: percent, id: percent,
            name: Percent}, {axisId: percent_2, id: percent_2, name: Percent 2}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: [users.count1, users.count2, users.count]
    listen: {}
    row: 0
    col: 0
    width: 8
    height: 6
