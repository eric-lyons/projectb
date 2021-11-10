- dashboard: weekly_managerment_meeting__actuals_and_forecasts_vs_planned
  title: Weekly Managerment Meeting - Actuals and Forecasts vs Planned
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Previous Month Actual Revenue
    name: Previous Month Actual Revenue
    model: forecasts
    explore: actuals_forecasted_planned_by_month
    type: single_value
    fields: [closed.date_day_month, actuals_forecasted_planned_by_month.total_actual_revenue]
    fill_fields: [closed.date_day_month]
    filters: {}
    sorts: [closed.date_day_month desc]
    limit: 500
    filter_expression: extract_months(${closed.date_day_month}) = extract_months(add_months(-1,
      now())) AND extract_years(${closed.date_day_month}) = extract_years(add_months(-1,
      now()))
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: ''
    comparison_label: Planned
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#03726c",
        font_color: "#f5f7ed", color_application: {collection_id: upequity, palette_id: upequity-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
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
    defaults_version: 1
    series_types: {}
    listen:
      Plan: plans.name
    row: 0
    col: 2
    width: 4
    height: 6
  - title: Previous Month Forecast Revenue
    name: Previous Month Forecast Revenue
    model: forecasts
    explore: actuals_forecasted_planned_by_month
    type: single_value
    fields: [closed.date_day_month, actuals_forecasted_planned_by_month.total_forecasted_revenue]
    fill_fields: [closed.date_day_month]
    filters: {}
    sorts: [closed.date_day_month desc]
    limit: 500
    filter_expression: extract_months(${closed.date_day_month}) = extract_months(add_months(-1,
      now())) AND extract_years(${closed.date_day_month}) = extract_years(add_months(-1,
      now()))
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: Planned
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#35bad8",
        font_color: "#f5f7ed", color_application: {collection_id: upequity, palette_id: upequity-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
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
    defaults_version: 1
    series_types: {}
    listen:
      Plan: plans.name
    row: 0
    col: 6
    width: 4
    height: 6
  - title: Previous Month Deals
    name: Previous Month Deals
    model: forecasts
    explore: actuals_forecasted_planned_by_month
    type: single_value
    fields: [closed.date_day_month, actuals_forecasted_planned_by_month.total_forecasted_deals,
      actuals_forecasted_planned_by_month.total_planned_deals]
    fill_fields: [closed.date_day_month]
    filters: {}
    sorts: [closed.date_day_month desc]
    limit: 500
    filter_expression: extract_months(${closed.date_day_month}) = extract_months(add_months(-1,
      now())) AND extract_years(${closed.date_day_month}) = extract_years(add_months(-1,
      now()))
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: Planned
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#1d717f",
        font_color: "#f5f7ed", color_application: {collection_id: upequity, palette_id: upequity-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
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
    defaults_version: 1
    series_types: {}
    listen:
      Plan: plans.name
    row: 6
    col: 6
    width: 4
    height: 6
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: ''
    row: 12
    col: 0
    width: 24
    height: 4
  - title: Forecasts vs Planned
    name: Forecasts vs Planned
    model: forecasts
    explore: actuals_forecasted_planned_by_month
    type: marketplace_viz_report_table::report_table-marketplace
    fields: [closed.date_day_month, closed_month, actuals_forecasted_planned_by_month.direct_or_agent,
      actuals_forecasted_planned_by_month.total_forecasted_revenue, actuals_forecasted_planned_by_month.total_planned_revenue,
      actuals_forecasted_planned_by_month.total_forecasted_deals, actuals_forecasted_planned_by_month.total_planned_deals]
    filters:
      closed.date_day_year: 1 years
      plans.name: Current
    sorts: [closed.date_day_month]
    limit: 500
    dynamic_fields: [{category: dimension, description: '', label: Closed Month, value_format: !!null '',
        value_format_name: !!null '', calculation_type: group_by, dimension: closed_month,
        args: [closed.date_day_month, [!ruby/hash:ActiveSupport::HashWithIndifferentAccess {
              label: Previous Month, filter: last month}, !ruby/hash:ActiveSupport::HashWithIndifferentAccess {
              label: Current Month, filter: this month}, !ruby/hash:ActiveSupport::HashWithIndifferentAccess {
              label: Next Month, filter: next month}], Other], _kind_hint: dimension,
        _type_hint: string}, {category: table_calculation, expression: "${actuals_forecasted_planned_by_month.total_forecasted_revenue}/${actuals_forecasted_planned_by_month.total_forecasted_deals}",
        label: Forecasted Dollars per Deal, value_format: !!null '', value_format_name: usd_0,
        _kind_hint: measure, table_calculation: forecasted_dollars_per_deal, _type_hint: number},
      {category: table_calculation, expression: "${actuals_forecasted_planned_by_month.total_planned_revenue}/${actuals_forecasted_planned_by_month.total_planned_deals}",
        label: Planned Dollars per Deal, value_format: !!null '', value_format_name: usd_0,
        _kind_hint: measure, table_calculation: planned_dollars_per_deal, _type_hint: number}]
    filter_expression: "${closed.date_day_month} > add_months(-2, now()) AND ${closed.date_day_month}\
      \ < add_months(1, now()) "
    hidden_fields: [closed.date_day_month]
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    theme: traditional
    layout: auto
    minWidthForIndexColumns: false
    headerFontSize: 18
    bodyFontSize: 16
    showTooltip: true
    showHighlight: true
    columnOrder: {}
    rowSubtotals: true
    colSubtotals: true
    spanRows: true
    spanCols: true
    calculateOthers: true
    sortColumnsBy: pivots
    useViewName: false
    useHeadings: false
    useShortName: false
    useUnit: false
    groupVarianceColumns: false
    genericLabelForSubtotals: true
    indexColumn: false
    transposeTable: false
    label|closed_month: ''
    heading|closed_month: ''
    hide|closed_month: false
    label|actuals_forecasted_planned_by_month.direct_or_agent: Direct or Agent
    heading|actuals_forecasted_planned_by_month.direct_or_agent: ''
    hide|actuals_forecasted_planned_by_month.direct_or_agent: false
    subtotalDepth: '1'
    label|actuals_forecasted_planned_by_month.total_forecasted_revenue: Total Forecasted
      Revenue
    heading|actuals_forecasted_planned_by_month.total_forecasted_revenue: ''
    style|actuals_forecasted_planned_by_month.total_forecasted_revenue: normal
    reportIn|actuals_forecasted_planned_by_month.total_forecasted_revenue: '1'
    unit|actuals_forecasted_planned_by_month.total_forecasted_revenue: ''
    comparison|actuals_forecasted_planned_by_month.total_forecasted_revenue: no_variance
    switch|actuals_forecasted_planned_by_month.total_forecasted_revenue: false
    var_num|actuals_forecasted_planned_by_month.total_forecasted_revenue: true
    var_pct|actuals_forecasted_planned_by_month.total_forecasted_revenue: false
    label|actuals_forecasted_planned_by_month.total_planned_revenue: Total Planned
      Revenue
    heading|actuals_forecasted_planned_by_month.total_planned_revenue: ''
    style|actuals_forecasted_planned_by_month.total_planned_revenue: normal
    reportIn|actuals_forecasted_planned_by_month.total_planned_revenue: '1'
    unit|actuals_forecasted_planned_by_month.total_planned_revenue: ''
    comparison|actuals_forecasted_planned_by_month.total_planned_revenue: no_variance
    switch|actuals_forecasted_planned_by_month.total_planned_revenue: false
    var_num|actuals_forecasted_planned_by_month.total_planned_revenue: true
    var_pct|actuals_forecasted_planned_by_month.total_planned_revenue: false
    label|actuals_forecasted_planned_by_month.total_forecasted_deals: Total Forecasted
      Deals
    heading|actuals_forecasted_planned_by_month.total_forecasted_deals: ''
    style|actuals_forecasted_planned_by_month.total_forecasted_deals: normal
    reportIn|actuals_forecasted_planned_by_month.total_forecasted_deals: '1'
    unit|actuals_forecasted_planned_by_month.total_forecasted_deals: ''
    comparison|actuals_forecasted_planned_by_month.total_forecasted_deals: no_variance
    switch|actuals_forecasted_planned_by_month.total_forecasted_deals: false
    var_num|actuals_forecasted_planned_by_month.total_forecasted_deals: true
    var_pct|actuals_forecasted_planned_by_month.total_forecasted_deals: false
    label|actuals_forecasted_planned_by_month.total_planned_deals: Total Planned Deals
    heading|actuals_forecasted_planned_by_month.total_planned_deals: ''
    style|actuals_forecasted_planned_by_month.total_planned_deals: normal
    reportIn|actuals_forecasted_planned_by_month.total_planned_deals: '1'
    unit|actuals_forecasted_planned_by_month.total_planned_deals: ''
    comparison|actuals_forecasted_planned_by_month.total_planned_deals: no_variance
    switch|actuals_forecasted_planned_by_month.total_planned_deals: false
    var_num|actuals_forecasted_planned_by_month.total_planned_deals: true
    var_pct|actuals_forecasted_planned_by_month.total_planned_deals: false
    label|forecasted_dollars_per_deal: Forecasted Dollars per Deal
    heading|forecasted_dollars_per_deal: ''
    style|forecasted_dollars_per_deal: normal
    reportIn|forecasted_dollars_per_deal: '1'
    unit|forecasted_dollars_per_deal: ''
    comparison|forecasted_dollars_per_deal: no_variance
    switch|forecasted_dollars_per_deal: false
    var_num|forecasted_dollars_per_deal: true
    var_pct|forecasted_dollars_per_deal: false
    label|planned_dollars_per_deal: Planned Dollars per Deal
    heading|planned_dollars_per_deal: ''
    style|planned_dollars_per_deal: normal
    reportIn|planned_dollars_per_deal: '1'
    unit|planned_dollars_per_deal: ''
    comparison|planned_dollars_per_deal: no_variance
    switch|planned_dollars_per_deal: false
    var_num|planned_dollars_per_deal: true
    var_pct|planned_dollars_per_deal: false
    hide|closed.date_day_month: false
    series_types: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 0
    query_fields:
      measures:
      - align: right
        can_filter: true
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Actuals Forecasted Planned By Month Total Forecasted Revenue
        label_from_parameter:
        label_short: Total Forecasted Revenue
        map_layer:
        name: actuals_forecasted_planned_by_month.total_forecasted_revenue
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "$#,##0"
        view: actuals_forecasted_planned_by_month
        view_label: Actuals Forecasted Planned By Month
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Total Forecasted Revenue
        measure: true
        parameter: false
        primary_key: false
        project_name: snowlfake-analytics
        scope: actuals_forecasted_planned_by_month
        suggest_dimension: actuals_forecasted_planned_by_month.total_forecasted_revenue
        suggest_explore: actuals_forecasted_planned_by_month
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/snowlfake-analytics/files/views%2Factuals_forecasted_planned_by_month.view.lkml?line=112"
        permanent:
        source_file: views/actuals_forecasted_planned_by_month.view.lkml
        source_file_path: snowlfake-analytics/views/actuals_forecasted_planned_by_month.view.lkml
        sql: "${forecasted_revenue} "
        sql_case:
        filters:
      - align: right
        can_filter: true
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Actuals Forecasted Planned By Month Total Planned Revenue
        label_from_parameter:
        label_short: Total Planned Revenue
        map_layer:
        name: actuals_forecasted_planned_by_month.total_planned_revenue
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "$#,##0"
        view: actuals_forecasted_planned_by_month
        view_label: Actuals Forecasted Planned By Month
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Total Planned Revenue
        measure: true
        parameter: false
        primary_key: false
        project_name: snowlfake-analytics
        scope: actuals_forecasted_planned_by_month
        suggest_dimension: actuals_forecasted_planned_by_month.total_planned_revenue
        suggest_explore: actuals_forecasted_planned_by_month
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/snowlfake-analytics/files/views%2Factuals_forecasted_planned_by_month.view.lkml?line=118"
        permanent:
        source_file: views/actuals_forecasted_planned_by_month.view.lkml
        source_file_path: snowlfake-analytics/views/actuals_forecasted_planned_by_month.view.lkml
        sql: "${planned_revenue} "
        sql_case:
        filters:
      - align: right
        can_filter: true
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Actuals Forecasted Planned By Month Total Forecasted Deals
        label_from_parameter:
        label_short: Total Forecasted Deals
        map_layer:
        name: actuals_forecasted_planned_by_month.total_forecasted_deals
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "#,##0"
        view: actuals_forecasted_planned_by_month
        view_label: Actuals Forecasted Planned By Month
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Total Forecasted Deals
        measure: true
        parameter: false
        primary_key: false
        project_name: snowlfake-analytics
        scope: actuals_forecasted_planned_by_month
        suggest_dimension: actuals_forecasted_planned_by_month.total_forecasted_deals
        suggest_explore: actuals_forecasted_planned_by_month
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/snowlfake-analytics/files/views%2Factuals_forecasted_planned_by_month.view.lkml?line=130"
        permanent:
        source_file: views/actuals_forecasted_planned_by_month.view.lkml
        source_file_path: snowlfake-analytics/views/actuals_forecasted_planned_by_month.view.lkml
        sql: "${forecasted_deals} "
        sql_case:
        filters:
      - align: right
        can_filter: true
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Actuals Forecasted Planned By Month Total Planned Deals
        label_from_parameter:
        label_short: Total Planned Deals
        map_layer:
        name: actuals_forecasted_planned_by_month.total_planned_deals
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "#,##0"
        view: actuals_forecasted_planned_by_month
        view_label: Actuals Forecasted Planned By Month
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Total Planned Deals
        measure: true
        parameter: false
        primary_key: false
        project_name: snowlfake-analytics
        scope: actuals_forecasted_planned_by_month
        suggest_dimension: actuals_forecasted_planned_by_month.total_planned_deals
        suggest_explore: actuals_forecasted_planned_by_month
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/snowlfake-analytics/files/views%2Factuals_forecasted_planned_by_month.view.lkml?line=136"
        permanent:
        source_file: views/actuals_forecasted_planned_by_month.view.lkml
        source_file_path: snowlfake-analytics/views/actuals_forecasted_planned_by_month.view.lkml
        sql: "${planned_deals} "
        sql_case:
        filters:
      dimensions:
      - align: left
        can_filter: true
        category: dimension
        default_filter_value:
        description:
        enumerations:
        field_group_label: Closed Date
        fill_style: range
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: false
        label: Dates Closed Month
        label_from_parameter:
        label_short: Closed Month
        map_layer:
        name: closed.date_day_month
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: date_month
        user_attribute_filter_types:
        - datetime
        - advanced_filter_datetime
        value_format:
        view: closed
        view_label: Dates
        dynamic: false
        week_start_day: monday
        dimension_group: closed.date_day
        error:
        field_group_variant: Month
        measure: false
        parameter: false
        primary_key: false
        project_name: snowlfake-analytics
        scope: closed
        suggest_dimension: closed.date_day_month
        suggest_explore: actuals_forecasted_planned_by_month
        suggestable: false
        is_fiscal: false
        is_timeframe: true
        can_time_filter: false
        time_interval:
          name: month
          count: 1
        lookml_link: "/projects/snowlfake-analytics/files/views%2Fdates.view.lkml?line=13"
        permanent:
        source_file: views/dates.view.lkml
        source_file_path: snowlfake-analytics/views/dates.view.lkml
        sql: '${TABLE}."DATE_DAY" '
        sql_case:
        filters:
        sorted:
          desc: false
          sort_index: 0
      - align: left
        can_filter: true
        category: dimension
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: false
        label: Closed Month
        label_from_parameter:
        label_short: Closed Month
        map_layer:
        name: closed_month
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: string
        user_attribute_filter_types:
        - string
        - advanced_filter_string
        value_format:
        view: closed
        view_label: ''
        dynamic: true
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Closed Month
        measure: false
        parameter: false
        primary_key: false
        project_name:
        scope: closed
        suggest_dimension: closed_month
        suggest_explore: actuals_forecasted_planned_by_month
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link:
        permanent:
        source_file:
        source_file_path:
        sql: closed_month
        sql_case:
        filters:
      - align: left
        can_filter: true
        category: dimension
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: false
        label: Actuals Forecasted Planned By Month Direct or Agent
        label_from_parameter:
        label_short: Direct or Agent
        map_layer:
        name: actuals_forecasted_planned_by_month.direct_or_agent
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: string
        user_attribute_filter_types:
        - string
        - advanced_filter_string
        value_format:
        view: actuals_forecasted_planned_by_month
        view_label: Actuals Forecasted Planned By Month
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Direct or Agent
        measure: false
        parameter: false
        primary_key: false
        project_name: snowlfake-analytics
        scope: actuals_forecasted_planned_by_month
        suggest_dimension: actuals_forecasted_planned_by_month.direct_or_agent
        suggest_explore: actuals_forecasted_planned_by_month
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/snowlfake-analytics/files/views%2Factuals_forecasted_planned_by_month.view.lkml?line=51"
        permanent:
        source_file: views/actuals_forecasted_planned_by_month.view.lkml
        source_file_path: snowlfake-analytics/views/actuals_forecasted_planned_by_month.view.lkml
        sql: '${TABLE}."DIRECT_OR_AGENT" '
        sql_case:
        filters:
      table_calculations:
      - label: Forecasted Dollars per Deal
        name: forecasted_dollars_per_deal
        expression: "${actuals_forecasted_planned_by_month.total_forecasted_revenue}/${actuals_forecasted_planned_by_month.total_forecasted_deals}"
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "$#,##0"
        is_numeric: true
      - label: Planned Dollars per Deal
        name: planned_dollars_per_deal
        expression: "${actuals_forecasted_planned_by_month.total_planned_revenue}/${actuals_forecasted_planned_by_month.total_planned_deals}"
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "$#,##0"
        is_numeric: true
      pivots: []
    listen: {}
    row: 64
    col: 1
    width: 22
    height: 7
  - title: Forecasts vs Planned QTD
    name: Forecasts vs Planned QTD
    model: forecasts
    explore: actuals_forecasted_planned_by_month
    type: marketplace_viz_report_table::report_table-marketplace
    fields: [closed, actuals_forecasted_planned_by_month.direct_or_agent, actuals_forecasted_planned_by_month.total_forecasted_revenue,
      actuals_forecasted_planned_by_month.total_planned_revenue, actuals_forecasted_planned_by_month.total_forecasted_deals,
      actuals_forecasted_planned_by_month.total_planned_deals]
    filters:
      closed.date_day_month: 1 quarters
      plans.name: Current
    sorts: [actuals_forecasted_planned_by_month.total_forecasted_revenue desc]
    limit: 500
    dynamic_fields: [{category: dimension, description: '', label: Closed, value_format: !!null '',
        value_format_name: !!null '', calculation_type: group_by, dimension: closed,
        args: [closed.date_day_month, [!ruby/hash:ActiveSupport::HashWithIndifferentAccess {
              label: QTD, filter: this quarter}], Other], _kind_hint: dimension, _type_hint: string},
      {category: table_calculation, expression: "${actuals_forecasted_planned_by_month.total_forecasted_revenue}/${actuals_forecasted_planned_by_month.total_forecasted_deals}",
        label: Forecasted Dollars per Deal, value_format: !!null '', value_format_name: usd_0,
        _kind_hint: measure, table_calculation: forecasted_dollars_per_deal, _type_hint: number},
      {category: table_calculation, expression: "${actuals_forecasted_planned_by_month.total_planned_revenue}/${actuals_forecasted_planned_by_month.total_planned_deals}",
        label: Planned Dollars per Deal, value_format: !!null '', value_format_name: usd_0,
        _kind_hint: measure, table_calculation: planned_dollars_per_deal, _type_hint: number}]
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    theme: traditional
    layout: auto
    minWidthForIndexColumns: false
    headerFontSize: 18
    bodyFontSize: 16
    showTooltip: true
    showHighlight: true
    columnOrder: {}
    rowSubtotals: true
    colSubtotals: true
    spanRows: true
    spanCols: true
    calculateOthers: true
    sortColumnsBy: pivots
    useViewName: false
    useHeadings: false
    useShortName: false
    useUnit: false
    groupVarianceColumns: false
    genericLabelForSubtotals: true
    indexColumn: false
    transposeTable: false
    label|closed: Closed Month
    heading|closed: ''
    hide|closed: false
    label|actuals_forecasted_planned_by_month.direct_or_agent: Direct or Agent
    heading|actuals_forecasted_planned_by_month.direct_or_agent: ''
    hide|actuals_forecasted_planned_by_month.direct_or_agent: false
    subtotalDepth: '1'
    label|actuals_forecasted_planned_by_month.total_forecasted_revenue: Total Forecasted
      Revenue
    heading|actuals_forecasted_planned_by_month.total_forecasted_revenue: ''
    style|actuals_forecasted_planned_by_month.total_forecasted_revenue: normal
    reportIn|actuals_forecasted_planned_by_month.total_forecasted_revenue: '1'
    unit|actuals_forecasted_planned_by_month.total_forecasted_revenue: ''
    comparison|actuals_forecasted_planned_by_month.total_forecasted_revenue: no_variance
    switch|actuals_forecasted_planned_by_month.total_forecasted_revenue: false
    var_num|actuals_forecasted_planned_by_month.total_forecasted_revenue: false
    var_pct|actuals_forecasted_planned_by_month.total_forecasted_revenue: false
    label|actuals_forecasted_planned_by_month.total_planned_revenue: Total Planned
      Revenue
    heading|actuals_forecasted_planned_by_month.total_planned_revenue: ''
    style|actuals_forecasted_planned_by_month.total_planned_revenue: normal
    reportIn|actuals_forecasted_planned_by_month.total_planned_revenue: '1'
    unit|actuals_forecasted_planned_by_month.total_planned_revenue: ''
    comparison|actuals_forecasted_planned_by_month.total_planned_revenue: no_variance
    switch|actuals_forecasted_planned_by_month.total_planned_revenue: false
    var_num|actuals_forecasted_planned_by_month.total_planned_revenue: true
    var_pct|actuals_forecasted_planned_by_month.total_planned_revenue: false
    label|actuals_forecasted_planned_by_month.total_forecasted_deals: Total Forecasted
      Deals
    heading|actuals_forecasted_planned_by_month.total_forecasted_deals: ''
    style|actuals_forecasted_planned_by_month.total_forecasted_deals: normal
    reportIn|actuals_forecasted_planned_by_month.total_forecasted_deals: '1'
    unit|actuals_forecasted_planned_by_month.total_forecasted_deals: ''
    comparison|actuals_forecasted_planned_by_month.total_forecasted_deals: no_variance
    switch|actuals_forecasted_planned_by_month.total_forecasted_deals: false
    var_num|actuals_forecasted_planned_by_month.total_forecasted_deals: true
    var_pct|actuals_forecasted_planned_by_month.total_forecasted_deals: false
    label|actuals_forecasted_planned_by_month.total_planned_deals: Total Planned Deals
    heading|actuals_forecasted_planned_by_month.total_planned_deals: ''
    style|actuals_forecasted_planned_by_month.total_planned_deals: normal
    reportIn|actuals_forecasted_planned_by_month.total_planned_deals: '1'
    unit|actuals_forecasted_planned_by_month.total_planned_deals: ''
    comparison|actuals_forecasted_planned_by_month.total_planned_deals: no_variance
    switch|actuals_forecasted_planned_by_month.total_planned_deals: false
    var_num|actuals_forecasted_planned_by_month.total_planned_deals: true
    var_pct|actuals_forecasted_planned_by_month.total_planned_deals: false
    label|closed_month: Closed Month
    hide|closed_month: false
    hide|closed.date_day_month: false
    series_types: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 0
    query_fields:
      measures:
      - align: right
        can_filter: true
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Actuals Forecasted Planned By Month Total Forecasted Revenue
        label_from_parameter:
        label_short: Total Forecasted Revenue
        map_layer:
        name: actuals_forecasted_planned_by_month.total_forecasted_revenue
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "$#,##0"
        view: actuals_forecasted_planned_by_month
        view_label: Actuals Forecasted Planned By Month
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Total Forecasted Revenue
        measure: true
        parameter: false
        primary_key: false
        project_name: snowlfake-analytics
        scope: actuals_forecasted_planned_by_month
        suggest_dimension: actuals_forecasted_planned_by_month.total_forecasted_revenue
        suggest_explore: actuals_forecasted_planned_by_month
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/snowlfake-analytics/files/views%2Factuals_forecasted_planned_by_month.view.lkml?line=112"
        permanent:
        source_file: views/actuals_forecasted_planned_by_month.view.lkml
        source_file_path: snowlfake-analytics/views/actuals_forecasted_planned_by_month.view.lkml
        sql: "${forecasted_revenue} "
        sql_case:
        filters:
        sorted:
          desc: true
          sort_index: 0
      - align: right
        can_filter: true
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Actuals Forecasted Planned By Month Total Planned Revenue
        label_from_parameter:
        label_short: Total Planned Revenue
        map_layer:
        name: actuals_forecasted_planned_by_month.total_planned_revenue
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "$#,##0"
        view: actuals_forecasted_planned_by_month
        view_label: Actuals Forecasted Planned By Month
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Total Planned Revenue
        measure: true
        parameter: false
        primary_key: false
        project_name: snowlfake-analytics
        scope: actuals_forecasted_planned_by_month
        suggest_dimension: actuals_forecasted_planned_by_month.total_planned_revenue
        suggest_explore: actuals_forecasted_planned_by_month
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/snowlfake-analytics/files/views%2Factuals_forecasted_planned_by_month.view.lkml?line=118"
        permanent:
        source_file: views/actuals_forecasted_planned_by_month.view.lkml
        source_file_path: snowlfake-analytics/views/actuals_forecasted_planned_by_month.view.lkml
        sql: "${planned_revenue} "
        sql_case:
        filters:
      - align: right
        can_filter: true
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Actuals Forecasted Planned By Month Total Forecasted Deals
        label_from_parameter:
        label_short: Total Forecasted Deals
        map_layer:
        name: actuals_forecasted_planned_by_month.total_forecasted_deals
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "#,##0"
        view: actuals_forecasted_planned_by_month
        view_label: Actuals Forecasted Planned By Month
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Total Forecasted Deals
        measure: true
        parameter: false
        primary_key: false
        project_name: snowlfake-analytics
        scope: actuals_forecasted_planned_by_month
        suggest_dimension: actuals_forecasted_planned_by_month.total_forecasted_deals
        suggest_explore: actuals_forecasted_planned_by_month
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/snowlfake-analytics/files/views%2Factuals_forecasted_planned_by_month.view.lkml?line=130"
        permanent:
        source_file: views/actuals_forecasted_planned_by_month.view.lkml
        source_file_path: snowlfake-analytics/views/actuals_forecasted_planned_by_month.view.lkml
        sql: "${forecasted_deals} "
        sql_case:
        filters:
      - align: right
        can_filter: true
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Actuals Forecasted Planned By Month Total Planned Deals
        label_from_parameter:
        label_short: Total Planned Deals
        map_layer:
        name: actuals_forecasted_planned_by_month.total_planned_deals
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "#,##0"
        view: actuals_forecasted_planned_by_month
        view_label: Actuals Forecasted Planned By Month
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Total Planned Deals
        measure: true
        parameter: false
        primary_key: false
        project_name: snowlfake-analytics
        scope: actuals_forecasted_planned_by_month
        suggest_dimension: actuals_forecasted_planned_by_month.total_planned_deals
        suggest_explore: actuals_forecasted_planned_by_month
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/snowlfake-analytics/files/views%2Factuals_forecasted_planned_by_month.view.lkml?line=136"
        permanent:
        source_file: views/actuals_forecasted_planned_by_month.view.lkml
        source_file_path: snowlfake-analytics/views/actuals_forecasted_planned_by_month.view.lkml
        sql: "${planned_deals} "
        sql_case:
        filters:
      dimensions:
      - align: left
        can_filter: true
        category: dimension
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: false
        label: Closed
        label_from_parameter:
        label_short: Closed
        map_layer:
        name: closed
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: string
        user_attribute_filter_types:
        - string
        - advanced_filter_string
        value_format:
        view: closed
        view_label: ''
        dynamic: true
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Closed
        measure: false
        parameter: false
        primary_key: false
        project_name:
        scope: closed
        suggest_dimension: closed
        suggest_explore: actuals_forecasted_planned_by_month
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link:
        permanent:
        source_file:
        source_file_path:
        sql: closed
        sql_case:
        filters:
      - align: left
        can_filter: true
        category: dimension
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: false
        label: Actuals Forecasted Planned By Month Direct or Agent
        label_from_parameter:
        label_short: Direct or Agent
        map_layer:
        name: actuals_forecasted_planned_by_month.direct_or_agent
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: string
        user_attribute_filter_types:
        - string
        - advanced_filter_string
        value_format:
        view: actuals_forecasted_planned_by_month
        view_label: Actuals Forecasted Planned By Month
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Direct or Agent
        measure: false
        parameter: false
        primary_key: false
        project_name: snowlfake-analytics
        scope: actuals_forecasted_planned_by_month
        suggest_dimension: actuals_forecasted_planned_by_month.direct_or_agent
        suggest_explore: actuals_forecasted_planned_by_month
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/snowlfake-analytics/files/views%2Factuals_forecasted_planned_by_month.view.lkml?line=51"
        permanent:
        source_file: views/actuals_forecasted_planned_by_month.view.lkml
        source_file_path: snowlfake-analytics/views/actuals_forecasted_planned_by_month.view.lkml
        sql: '${TABLE}."DIRECT_OR_AGENT" '
        sql_case:
        filters:
      table_calculations:
      - label: Forecasted Dollars per Deal
        name: forecasted_dollars_per_deal
        expression: "${actuals_forecasted_planned_by_month.total_forecasted_revenue}/${actuals_forecasted_planned_by_month.total_forecasted_deals}"
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "$#,##0"
        is_numeric: true
      - label: Planned Dollars per Deal
        name: planned_dollars_per_deal
        expression: "${actuals_forecasted_planned_by_month.total_planned_revenue}/${actuals_forecasted_planned_by_month.total_planned_deals}"
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "$#,##0"
        is_numeric: true
      pivots: []
    listen: {}
    row: 71
    col: 1
    width: 22
    height: 5
  - title: Previous Month Planned Revenue
    name: Previous Month Planned Revenue
    model: forecasts
    explore: actuals_forecasted_planned_by_month
    type: single_value
    fields: [closed.date_day_month, actuals_forecasted_planned_by_month.total_planned_revenue]
    fill_fields: [closed.date_day_month]
    filters: {}
    sorts: [closed.date_day_month desc]
    limit: 500
    filter_expression: extract_months(${closed.date_day_month}) = extract_months(add_months(-1,
      now())) AND extract_years(${closed.date_day_month}) = extract_years(add_months(-1,
      now()))
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: Planned
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#7b8482",
        font_color: "#f5f7ed", color_application: {collection_id: upequity, palette_id: upequity-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
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
    defaults_version: 1
    series_types: {}
    listen:
      Plan: plans.name
    row: 0
    col: 10
    width: 4
    height: 6
  - title: Previous Month Actuals Need
    name: Previous Month Actuals Need
    model: forecasts
    explore: actuals_forecasted_planned_by_month
    type: single_value
    fields: [closed.date_day_month, actuals_forecasted_planned_by_month.total_actual_revenue,
      actuals_forecasted_planned_by_month.total_planned_revenue]
    fill_fields: [closed.date_day_month]
    filters: {}
    sorts: [closed.date_day_month desc]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${actuals_forecasted_planned_by_month.total_planned_revenue}-${actuals_forecasted_planned_by_month.total_actual_revenue}",
        label: Actuals Need, value_format: !!null '', value_format_name: usd_0, _kind_hint: measure,
        table_calculation: actuals_need, _type_hint: number}]
    filter_expression: extract_months(${closed.date_day_month}) = extract_months(add_months(-1,
      now())) AND extract_years(${closed.date_day_month}) = extract_years(add_months(-1,
      now()))
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: ''
    comparison_label: Planned
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#05948b",
        font_color: "#f5f7ed", color_application: {collection_id: upequity, palette_id: upequity-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
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
    defaults_version: 1
    series_types: {}
    hidden_fields: [actuals_forecasted_planned_by_month.total_actual_revenue, actuals_forecasted_planned_by_month.total_planned_revenue]
    listen:
      Plan: plans.name
    row: 0
    col: 14
    width: 4
    height: 6
  - title: Previous Month Forecast Need
    name: Previous Month Forecast Need
    model: forecasts
    explore: actuals_forecasted_planned_by_month
    type: single_value
    fields: [closed.date_day_month, actuals_forecasted_planned_by_month.total_forecasted_revenue,
      actuals_forecasted_planned_by_month.total_planned_revenue]
    fill_fields: [closed.date_day_month]
    filters: {}
    sorts: [closed.date_day_month desc]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${actuals_forecasted_planned_by_month.total_planned_revenue}-${actuals_forecasted_planned_by_month.total_forecasted_revenue}",
        label: Forecast Need, value_format: !!null '', value_format_name: usd_0, _kind_hint: measure,
        table_calculation: forecast_need, _type_hint: number}]
    filter_expression: extract_months(${closed.date_day_month}) = extract_months(add_months(-1,
      now())) AND extract_years(${closed.date_day_month}) = extract_years(add_months(-1,
      now()))
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: Planned
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#44e3ff",
        font_color: "#f5f7ed", color_application: {collection_id: upequity, palette_id: upequity-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
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
    defaults_version: 1
    series_types: {}
    hidden_fields: [actuals_forecasted_planned_by_month.total_forecasted_revenue,
      actuals_forecasted_planned_by_month.total_planned_revenue]
    listen:
      Plan: plans.name
    row: 0
    col: 18
    width: 4
    height: 6
  - title: Previous Month Planned Deals
    name: Previous Month Planned Deals
    model: forecasts
    explore: actuals_forecasted_planned_by_month
    type: single_value
    fields: [closed.date_day_month, actuals_forecasted_planned_by_month.total_planned_deals]
    fill_fields: [closed.date_day_month]
    filters: {}
    sorts: [closed.date_day_month desc]
    limit: 500
    filter_expression: extract_months(${closed.date_day_month}) = extract_months(add_months(-1,
      now())) AND extract_years(${closed.date_day_month}) = extract_years(add_months(-1,
      now()))
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: Planned
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#7b8482",
        font_color: "#f5f7ed", color_application: {collection_id: upequity, palette_id: upequity-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
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
    defaults_version: 1
    series_types: {}
    listen:
      Plan: plans.name
    row: 6
    col: 10
    width: 4
    height: 6
  - title: Previous Month Deals Need
    name: Previous Month Deals Need
    model: forecasts
    explore: actuals_forecasted_planned_by_month
    type: single_value
    fields: [closed.date_day_month, actuals_forecasted_planned_by_month.total_planned_deals,
      actuals_forecasted_planned_by_month.total_forecasted_deals]
    fill_fields: [closed.date_day_month]
    filters: {}
    sorts: [closed.date_day_month desc]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${actuals_forecasted_planned_by_month.total_planned_deals}-${actuals_forecasted_planned_by_month.total_forecasted_deals}",
        label: Deals Need, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: deals_need, _type_hint: number}]
    filter_expression: extract_months(${closed.date_day_month}) = extract_months(add_months(-1,
      now())) AND extract_years(${closed.date_day_month}) = extract_years(add_months(-1,
      now()))
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: Planned
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#238a99",
        font_color: "#f5f7ed", color_application: {collection_id: upequity, palette_id: upequity-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
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
    defaults_version: 1
    series_types: {}
    hidden_fields: [actuals_forecasted_planned_by_month.total_planned_deals, actuals_forecasted_planned_by_month.total_forecasted_deals]
    listen:
      Plan: plans.name
    row: 6
    col: 14
    width: 4
    height: 6
  - title: Current Month Planned Revenue
    name: Current Month Planned Revenue
    model: forecasts
    explore: actuals_forecasted_planned_by_month
    type: single_value
    fields: [closed.date_day_month, actuals_forecasted_planned_by_month.total_planned_revenue]
    fill_fields: [closed.date_day_month]
    filters:
      closed.date_day_month: 1 months
    sorts: [closed.date_day_month desc]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: Planned
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#7b8482",
        font_color: "#f5f7ed", color_application: {collection_id: upequity, palette_id: upequity-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
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
    defaults_version: 1
    series_types: {}
    listen:
      Plan: plans.name
    row: 16
    col: 10
    width: 4
    height: 6
  - title: Current Month Actual Revenue
    name: Current Month Actual Revenue
    model: forecasts
    explore: actuals_forecasted_planned_by_month
    type: single_value
    fields: [closed.date_day_month, actuals_forecasted_planned_by_month.total_actual_revenue]
    fill_fields: [closed.date_day_month]
    filters:
      closed.date_day_month: 1 months
    sorts: [closed.date_day_month desc]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: ''
    comparison_label: Planned
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#03726c",
        font_color: "#f5f7ed", color_application: {collection_id: upequity, palette_id: upequity-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
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
    defaults_version: 1
    series_types: {}
    listen:
      Plan: plans.name
    row: 16
    col: 2
    width: 4
    height: 6
  - title: Current Month Forecast Revenue
    name: Current Month Forecast Revenue
    model: forecasts
    explore: actuals_forecasted_planned_by_month
    type: single_value
    fields: [closed.date_day_month, actuals_forecasted_planned_by_month.total_forecasted_revenue]
    fill_fields: [closed.date_day_month]
    filters:
      closed.date_day_month: 1 months
    sorts: [closed.date_day_month desc]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: Planned
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#35bad8",
        font_color: "#f5f7ed", color_application: {collection_id: upequity, palette_id: upequity-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
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
    defaults_version: 1
    series_types: {}
    listen:
      Plan: plans.name
    row: 16
    col: 6
    width: 4
    height: 6
  - title: Current Month Actuals Need
    name: Current Month Actuals Need
    model: forecasts
    explore: actuals_forecasted_planned_by_month
    type: single_value
    fields: [closed.date_day_month, actuals_forecasted_planned_by_month.total_actual_revenue,
      actuals_forecasted_planned_by_month.total_planned_revenue]
    fill_fields: [closed.date_day_month]
    filters:
      closed.date_day_month: 1 months
    sorts: [closed.date_day_month desc]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${actuals_forecasted_planned_by_month.total_planned_revenue}-${actuals_forecasted_planned_by_month.total_actual_revenue}",
        label: Actuals Need, value_format: !!null '', value_format_name: usd_0, _kind_hint: measure,
        table_calculation: actuals_need, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: ''
    comparison_label: Planned
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#05948b",
        font_color: "#f5f7ed", color_application: {collection_id: upequity, palette_id: upequity-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
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
    defaults_version: 1
    series_types: {}
    hidden_fields: [actuals_forecasted_planned_by_month.total_actual_revenue, actuals_forecasted_planned_by_month.total_planned_revenue]
    listen:
      Plan: plans.name
    row: 16
    col: 14
    width: 4
    height: 6
  - title: Current Month Forecast Need
    name: Current Month Forecast Need
    model: forecasts
    explore: actuals_forecasted_planned_by_month
    type: single_value
    fields: [closed.date_day_month, actuals_forecasted_planned_by_month.total_forecasted_revenue,
      actuals_forecasted_planned_by_month.total_planned_revenue]
    fill_fields: [closed.date_day_month]
    filters:
      closed.date_day_month: 1 months
    sorts: [closed.date_day_month desc]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${actuals_forecasted_planned_by_month.total_planned_revenue}-${actuals_forecasted_planned_by_month.total_forecasted_revenue}",
        label: Forecast Need, value_format: !!null '', value_format_name: usd_0, _kind_hint: measure,
        table_calculation: forecast_need, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: Planned
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#44e3ff",
        font_color: "#f5f7ed", color_application: {collection_id: upequity, palette_id: upequity-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
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
    defaults_version: 1
    series_types: {}
    hidden_fields: [actuals_forecasted_planned_by_month.total_forecasted_revenue,
      actuals_forecasted_planned_by_month.total_planned_revenue]
    listen:
      Plan: plans.name
    row: 16
    col: 18
    width: 4
    height: 6
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: ''
    row: 28
    col: 0
    width: 24
    height: 4
  - title: Current Month Forecast Deals
    name: Current Month Forecast Deals
    model: forecasts
    explore: actuals_forecasted_planned_by_month
    type: single_value
    fields: [closed.date_day_month, actuals_forecasted_planned_by_month.total_forecasted_deals]
    fill_fields: [closed.date_day_month]
    filters:
      closed.date_day_month: 1 months
    sorts: [closed.date_day_month desc]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: Planned
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#35bad8",
        font_color: "#f5f7ed", color_application: {collection_id: upequity, palette_id: upequity-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
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
    defaults_version: 1
    series_types: {}
    listen:
      Plan: plans.name
    row: 22
    col: 6
    width: 4
    height: 6
  - title: Current Month Actual Deals
    name: Current Month Actual Deals
    model: forecasts
    explore: actuals_forecasted_planned_by_month
    type: single_value
    fields: [closed.date_day_month, actuals_forecasted_planned_by_month.total_actual_deals]
    fill_fields: [closed.date_day_month]
    filters:
      closed.date_day_month: 1 months
    sorts: [closed.date_day_month desc]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: ''
    comparison_label: Planned
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#03726c",
        font_color: "#f5f7ed", color_application: {collection_id: upequity, palette_id: upequity-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
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
    defaults_version: 1
    series_types: {}
    listen:
      Plan: plans.name
    row: 22
    col: 2
    width: 4
    height: 6
  - title: Current Month Planned Deals
    name: Current Month Planned Deals
    model: forecasts
    explore: actuals_forecasted_planned_by_month
    type: single_value
    fields: [closed.date_day_month, actuals_forecasted_planned_by_month.total_planned_deals]
    fill_fields: [closed.date_day_month]
    filters:
      closed.date_day_month: 1 months
    sorts: [closed.date_day_month desc]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: Planned
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#7b8482",
        font_color: "#f5f7ed", color_application: {collection_id: upequity, palette_id: upequity-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
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
    defaults_version: 1
    series_types: {}
    listen:
      Plan: plans.name
    row: 22
    col: 10
    width: 4
    height: 6
  - title: Current Month Forecast Deals Need
    name: Current Month Forecast Deals Need
    model: forecasts
    explore: actuals_forecasted_planned_by_month
    type: single_value
    fields: [closed.date_day_month, actuals_forecasted_planned_by_month.total_forecasted_deals,
      actuals_forecasted_planned_by_month.total_planned_deals]
    fill_fields: [closed.date_day_month]
    filters:
      closed.date_day_month: 1 months
    sorts: [closed.date_day_month desc]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${actuals_forecasted_planned_by_month.total_planned_deals}-${actuals_forecasted_planned_by_month.total_forecasted_deals}",
        label: Forecast Need, value_format: !!null '', value_format_name: decimal_0,
        _kind_hint: measure, table_calculation: forecast_need, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: Planned
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#44e3ff",
        font_color: "#f5f7ed", color_application: {collection_id: upequity, palette_id: upequity-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
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
    defaults_version: 1
    series_types: {}
    hidden_fields: [actuals_forecasted_planned_by_month.total_forecasted_deals, actuals_forecasted_planned_by_month.total_planned_deals]
    listen:
      Plan: plans.name
    row: 22
    col: 18
    width: 4
    height: 6
  - title: Current Month Actuals Deals Need
    name: Current Month Actuals Deals Need
    model: forecasts
    explore: actuals_forecasted_planned_by_month
    type: single_value
    fields: [closed.date_day_month, actuals_forecasted_planned_by_month.total_actual_deals,
      actuals_forecasted_planned_by_month.total_planned_deals]
    fill_fields: [closed.date_day_month]
    filters:
      closed.date_day_month: 1 months
    sorts: [closed.date_day_month desc]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${actuals_forecasted_planned_by_month.total_planned_deals}-${actuals_forecasted_planned_by_month.total_actual_deals}",
        label: Actuals Need, value_format: !!null '', value_format_name: '', _kind_hint: measure,
        table_calculation: actuals_need, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: ''
    comparison_label: Planned
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#05948b",
        font_color: "#f5f7ed", color_application: {collection_id: upequity, palette_id: upequity-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
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
    defaults_version: 1
    series_types: {}
    hidden_fields: [actuals_forecasted_planned_by_month.total_actual_deals, actuals_forecasted_planned_by_month.total_planned_deals]
    listen:
      Plan: plans.name
    row: 22
    col: 14
    width: 4
    height: 6
  - title: Next Month Actual Revenue
    name: Next Month Actual Revenue
    model: forecasts
    explore: actuals_forecasted_planned_by_month
    type: single_value
    fields: [closed.date_day_month, actuals_forecasted_planned_by_month.total_actual_revenue]
    fill_fields: [closed.date_day_month]
    filters: {}
    sorts: [closed.date_day_month desc]
    limit: 500
    filter_expression: extract_months(${closed.date_day_month}) = extract_months(add_months(1,
      now())) AND extract_years(${closed.date_day_month}) = extract_years(add_months(1,
      now()))
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: ''
    comparison_label: Planned
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#03726c",
        font_color: "#f5f7ed", color_application: {collection_id: upequity, palette_id: upequity-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
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
    defaults_version: 1
    series_types: {}
    listen:
      Plan: plans.name
    row: 32
    col: 2
    width: 4
    height: 6
  - title: Next Month Actuals Need
    name: Next Month Actuals Need
    model: forecasts
    explore: actuals_forecasted_planned_by_month
    type: single_value
    fields: [closed.date_day_month, actuals_forecasted_planned_by_month.total_actual_revenue,
      actuals_forecasted_planned_by_month.total_planned_revenue]
    fill_fields: [closed.date_day_month]
    filters: {}
    sorts: [closed.date_day_month desc]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${actuals_forecasted_planned_by_month.total_planned_revenue}-${actuals_forecasted_planned_by_month.total_actual_revenue}",
        label: Actuals Need, value_format: !!null '', value_format_name: usd_0, _kind_hint: measure,
        table_calculation: actuals_need, _type_hint: number}]
    filter_expression: extract_months(${closed.date_day_month}) = extract_months(add_months(1,
      now())) AND extract_years(${closed.date_day_month}) = extract_years(add_months(1,
      now()))
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: ''
    comparison_label: Planned
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#05948b",
        font_color: "#f5f7ed", color_application: {collection_id: upequity, palette_id: upequity-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
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
    defaults_version: 1
    series_types: {}
    hidden_fields: [actuals_forecasted_planned_by_month.total_actual_revenue, actuals_forecasted_planned_by_month.total_planned_revenue]
    listen:
      Plan: plans.name
    row: 32
    col: 14
    width: 4
    height: 6
  - title: Next Month Planned Revenue
    name: Next Month Planned Revenue
    model: forecasts
    explore: actuals_forecasted_planned_by_month
    type: single_value
    fields: [closed.date_day_month, actuals_forecasted_planned_by_month.total_planned_revenue]
    fill_fields: [closed.date_day_month]
    filters: {}
    sorts: [closed.date_day_month desc]
    limit: 500
    filter_expression: extract_months(${closed.date_day_month}) = extract_months(add_months(1,
      now())) AND extract_years(${closed.date_day_month}) = extract_years(add_months(1,
      now()))
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: Planned
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#7b8482",
        font_color: "#f5f7ed", color_application: {collection_id: upequity, palette_id: upequity-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
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
    defaults_version: 1
    series_types: {}
    listen:
      Plan: plans.name
    row: 32
    col: 10
    width: 4
    height: 6
  - title: Next Month Forecast Revenue
    name: Next Month Forecast Revenue
    model: forecasts
    explore: actuals_forecasted_planned_by_month
    type: single_value
    fields: [closed.date_day_month, actuals_forecasted_planned_by_month.total_forecasted_revenue]
    fill_fields: [closed.date_day_month]
    filters: {}
    sorts: [closed.date_day_month desc]
    limit: 500
    filter_expression: extract_months(${closed.date_day_month}) = extract_months(add_months(1,
      now())) AND extract_years(${closed.date_day_month}) = extract_years(add_months(1,
      now()))
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: Planned
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#35bad8",
        font_color: "#f5f7ed", color_application: {collection_id: upequity, palette_id: upequity-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
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
    defaults_version: 1
    series_types: {}
    listen:
      Plan: plans.name
    row: 32
    col: 6
    width: 4
    height: 6
  - title: Next Month Forecast Need
    name: Next Month Forecast Need
    model: forecasts
    explore: actuals_forecasted_planned_by_month
    type: single_value
    fields: [closed.date_day_month, actuals_forecasted_planned_by_month.total_forecasted_revenue,
      actuals_forecasted_planned_by_month.total_planned_revenue]
    fill_fields: [closed.date_day_month]
    filters: {}
    sorts: [closed.date_day_month desc]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${actuals_forecasted_planned_by_month.total_planned_revenue}-${actuals_forecasted_planned_by_month.total_forecasted_revenue}",
        label: Forecast Need, value_format: !!null '', value_format_name: usd_0, _kind_hint: measure,
        table_calculation: forecast_need, _type_hint: number}]
    filter_expression: extract_months(${closed.date_day_month}) = extract_months(add_months(1,
      now())) AND extract_years(${closed.date_day_month}) = extract_years(add_months(1,
      now()))
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: Planned
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#44e3ff",
        font_color: "#f5f7ed", color_application: {collection_id: upequity, palette_id: upequity-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
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
    defaults_version: 1
    series_types: {}
    hidden_fields: [actuals_forecasted_planned_by_month.total_forecasted_revenue,
      actuals_forecasted_planned_by_month.total_planned_revenue]
    listen:
      Plan: plans.name
    row: 32
    col: 18
    width: 4
    height: 6
  - title: Next Month Actual Deals
    name: Next Month Actual Deals
    model: forecasts
    explore: actuals_forecasted_planned_by_month
    type: single_value
    fields: [closed.date_day_month, actuals_forecasted_planned_by_month.total_actual_deals]
    fill_fields: [closed.date_day_month]
    filters: {}
    sorts: [closed.date_day_month desc]
    limit: 500
    filter_expression: extract_months(${closed.date_day_month}) = extract_months(add_months(1,
      now())) AND extract_years(${closed.date_day_month}) = extract_years(add_months(1,
      now()))
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: ''
    comparison_label: Planned
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#03726c",
        font_color: "#f5f7ed", color_application: {collection_id: upequity, palette_id: upequity-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
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
    defaults_version: 1
    series_types: {}
    listen:
      Plan: plans.name
    row: 38
    col: 2
    width: 4
    height: 6
  - title: Next Month Actuals Deals Need
    name: Next Month Actuals Deals Need
    model: forecasts
    explore: actuals_forecasted_planned_by_month
    type: single_value
    fields: [closed.date_day_month, actuals_forecasted_planned_by_month.total_actual_deals,
      actuals_forecasted_planned_by_month.total_planned_deals]
    fill_fields: [closed.date_day_month]
    filters: {}
    sorts: [closed.date_day_month desc]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${actuals_forecasted_planned_by_month.total_planned_deals}-${actuals_forecasted_planned_by_month.total_actual_deals}",
        label: Actuals Need, value_format: !!null '', value_format_name: '', _kind_hint: measure,
        table_calculation: actuals_need, _type_hint: number}]
    filter_expression: extract_months(${closed.date_day_month}) = extract_months(add_months(1,
      now())) AND extract_years(${closed.date_day_month}) = extract_years(add_months(1,
      now()))
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: ''
    comparison_label: Planned
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#05948b",
        font_color: "#f5f7ed", color_application: {collection_id: upequity, palette_id: upequity-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
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
    defaults_version: 1
    series_types: {}
    hidden_fields: [actuals_forecasted_planned_by_month.total_actual_deals, actuals_forecasted_planned_by_month.total_planned_deals]
    listen:
      Plan: plans.name
    row: 38
    col: 14
    width: 4
    height: 6
  - title: Next Month Forecast Deals
    name: Next Month Forecast Deals
    model: forecasts
    explore: actuals_forecasted_planned_by_month
    type: single_value
    fields: [closed.date_day_month, actuals_forecasted_planned_by_month.total_forecasted_deals]
    fill_fields: [closed.date_day_month]
    filters: {}
    sorts: [closed.date_day_month desc]
    limit: 500
    filter_expression: extract_months(${closed.date_day_month}) = extract_months(add_months(1,
      now())) AND extract_years(${closed.date_day_month}) = extract_years(add_months(1,
      now()))
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: Planned
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#35bad8",
        font_color: "#f5f7ed", color_application: {collection_id: upequity, palette_id: upequity-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
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
    defaults_version: 1
    series_types: {}
    listen:
      Plan: plans.name
    row: 38
    col: 6
    width: 4
    height: 6
  - title: Next Month Planned Deals
    name: Next Month Planned Deals
    model: forecasts
    explore: actuals_forecasted_planned_by_month
    type: single_value
    fields: [closed.date_day_month, actuals_forecasted_planned_by_month.total_planned_deals]
    fill_fields: [closed.date_day_month]
    filters: {}
    sorts: [closed.date_day_month desc]
    limit: 500
    filter_expression: extract_months(${closed.date_day_month}) = extract_months(add_months(1,
      now())) AND extract_years(${closed.date_day_month}) = extract_years(add_months(1,
      now()))
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: Planned
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#7b8482",
        font_color: "#f5f7ed", color_application: {collection_id: upequity, palette_id: upequity-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
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
    defaults_version: 1
    series_types: {}
    listen:
      Plan: plans.name
    row: 38
    col: 10
    width: 4
    height: 6
  - title: Next Month Forecast Deals Need
    name: Next Month Forecast Deals Need
    model: forecasts
    explore: actuals_forecasted_planned_by_month
    type: single_value
    fields: [closed.date_day_month, actuals_forecasted_planned_by_month.total_forecasted_deals,
      actuals_forecasted_planned_by_month.total_planned_deals]
    fill_fields: [closed.date_day_month]
    filters: {}
    sorts: [closed.date_day_month desc]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${actuals_forecasted_planned_by_month.total_planned_deals}-${actuals_forecasted_planned_by_month.total_forecasted_deals}",
        label: Forecast Need, value_format: !!null '', value_format_name: decimal_0,
        _kind_hint: measure, table_calculation: forecast_need, _type_hint: number}]
    filter_expression: extract_months(${closed.date_day_month}) = extract_months(add_months(1,
      now())) AND extract_years(${closed.date_day_month}) = extract_years(add_months(1,
      now()))
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: Planned
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#44e3ff",
        font_color: "#f5f7ed", color_application: {collection_id: upequity, palette_id: upequity-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
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
    defaults_version: 1
    series_types: {}
    hidden_fields: [actuals_forecasted_planned_by_month.total_forecasted_deals, actuals_forecasted_planned_by_month.total_planned_deals]
    listen:
      Plan: plans.name
    row: 38
    col: 18
    width: 4
    height: 6
  - name: " (3)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: ''
    row: 44
    col: 0
    width: 24
    height: 4
  - title: QTD Forecast Revenue
    name: QTD Forecast Revenue
    model: forecasts
    explore: actuals_forecasted_planned_by_month
    type: single_value
    fields: [actuals_forecasted_planned_by_month.total_forecasted_revenue]
    filters:
      closed.date_day_month: 1 quarters
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: Planned
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#35bad8",
        font_color: "#f5f7ed", color_application: {collection_id: upequity, palette_id: upequity-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
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
    defaults_version: 1
    series_types: {}
    listen:
      Plan: plans.name
    row: 48
    col: 6
    width: 4
    height: 6
  - title: QTD Actual Revenue
    name: QTD Actual Revenue
    model: forecasts
    explore: actuals_forecasted_planned_by_month
    type: single_value
    fields: [actuals_forecasted_planned_by_month.total_actual_revenue]
    filters:
      closed.date_day_month: 1 quarters
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: ''
    comparison_label: Planned
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#03726c",
        font_color: "#f5f7ed", color_application: {collection_id: upequity, palette_id: upequity-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
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
    defaults_version: 1
    series_types: {}
    listen:
      Plan: plans.name
    row: 48
    col: 2
    width: 4
    height: 6
  - title: QTD Planned Revenue
    name: QTD Planned Revenue
    model: forecasts
    explore: actuals_forecasted_planned_by_month
    type: single_value
    fields: [actuals_forecasted_planned_by_month.total_planned_revenue]
    filters:
      closed.date_day_month: 1 quarters
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: Planned
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#7b8482",
        font_color: "#f5f7ed", color_application: {collection_id: upequity, palette_id: upequity-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
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
    defaults_version: 1
    series_types: {}
    listen:
      Plan: plans.name
    row: 48
    col: 10
    width: 4
    height: 6
  - title: QTD Forecast Need
    name: QTD Forecast Need
    model: forecasts
    explore: actuals_forecasted_planned_by_month
    type: single_value
    fields: [actuals_forecasted_planned_by_month.total_forecasted_revenue, actuals_forecasted_planned_by_month.total_planned_revenue]
    filters:
      closed.date_day_month: 1 quarters
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${actuals_forecasted_planned_by_month.total_planned_revenue}-${actuals_forecasted_planned_by_month.total_forecasted_revenue}",
        label: Forecast Need, value_format: !!null '', value_format_name: usd_0, _kind_hint: measure,
        table_calculation: forecast_need, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: Planned
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#44e3ff",
        font_color: "#f5f7ed", color_application: {collection_id: upequity, palette_id: upequity-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
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
    defaults_version: 1
    series_types: {}
    hidden_fields: [actuals_forecasted_planned_by_month.total_forecasted_revenue,
      actuals_forecasted_planned_by_month.total_planned_revenue]
    listen:
      Plan: plans.name
    row: 48
    col: 18
    width: 4
    height: 6
  - title: QTD Actuals Need
    name: QTD Actuals Need
    model: forecasts
    explore: actuals_forecasted_planned_by_month
    type: single_value
    fields: [actuals_forecasted_planned_by_month.total_actual_revenue, actuals_forecasted_planned_by_month.total_planned_revenue]
    filters:
      closed.date_day_month: 1 quarters
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${actuals_forecasted_planned_by_month.total_planned_revenue}-${actuals_forecasted_planned_by_month.total_actual_revenue}",
        label: Actuals Need, value_format: !!null '', value_format_name: usd_0, _kind_hint: measure,
        table_calculation: actuals_need, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: ''
    comparison_label: Planned
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#05948b",
        font_color: "#f5f7ed", color_application: {collection_id: upequity, palette_id: upequity-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
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
    defaults_version: 1
    series_types: {}
    hidden_fields: [actuals_forecasted_planned_by_month.total_actual_revenue, actuals_forecasted_planned_by_month.total_planned_revenue]
    listen:
      Plan: plans.name
    row: 48
    col: 14
    width: 4
    height: 6
  - title: QTD Forecast Deals
    name: QTD Forecast Deals
    model: forecasts
    explore: actuals_forecasted_planned_by_month
    type: single_value
    fields: [actuals_forecasted_planned_by_month.total_forecasted_deals]
    filters:
      closed.date_day_month: 1 quarters
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: Planned
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#35bad8",
        font_color: "#f5f7ed", color_application: {collection_id: upequity, palette_id: upequity-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
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
    defaults_version: 1
    series_types: {}
    listen:
      Plan: plans.name
    row: 54
    col: 6
    width: 4
    height: 6
  - title: QTD Actuals Deals Need
    name: QTD Actuals Deals Need
    model: forecasts
    explore: actuals_forecasted_planned_by_month
    type: single_value
    fields: [actuals_forecasted_planned_by_month.total_actual_deals, actuals_forecasted_planned_by_month.total_planned_deals]
    filters:
      closed.date_day_month: 1 quarters
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${actuals_forecasted_planned_by_month.total_planned_deals}-${actuals_forecasted_planned_by_month.total_actual_deals}",
        label: Actuals Need, value_format: !!null '', value_format_name: '', _kind_hint: measure,
        table_calculation: actuals_need, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: ''
    comparison_label: Planned
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#05948b",
        font_color: "#f5f7ed", color_application: {collection_id: upequity, palette_id: upequity-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
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
    defaults_version: 1
    series_types: {}
    hidden_fields: [actuals_forecasted_planned_by_month.total_actual_deals, actuals_forecasted_planned_by_month.total_planned_deals]
    listen:
      Plan: plans.name
    row: 54
    col: 14
    width: 4
    height: 6
  - title: QTD Actual Deals
    name: QTD Actual Deals
    model: forecasts
    explore: actuals_forecasted_planned_by_month
    type: single_value
    fields: [actuals_forecasted_planned_by_month.total_actual_deals]
    filters:
      closed.date_day_month: 1 quarters
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: ''
    comparison_label: Planned
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#03726c",
        font_color: "#f5f7ed", color_application: {collection_id: upequity, palette_id: upequity-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
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
    defaults_version: 1
    series_types: {}
    listen:
      Plan: plans.name
    row: 54
    col: 2
    width: 4
    height: 6
  - title: QTD Forecast Deals Need
    name: QTD Forecast Deals Need
    model: forecasts
    explore: actuals_forecasted_planned_by_month
    type: single_value
    fields: [actuals_forecasted_planned_by_month.total_forecasted_deals, actuals_forecasted_planned_by_month.total_planned_deals]
    filters:
      closed.date_day_month: 1 quarters
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${actuals_forecasted_planned_by_month.total_planned_deals}-${actuals_forecasted_planned_by_month.total_forecasted_deals}",
        label: Forecast Need, value_format: !!null '', value_format_name: decimal_0,
        _kind_hint: measure, table_calculation: forecast_need, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: Planned
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#44e3ff",
        font_color: "#f5f7ed", color_application: {collection_id: upequity, palette_id: upequity-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
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
    defaults_version: 1
    series_types: {}
    hidden_fields: [actuals_forecasted_planned_by_month.total_forecasted_deals, actuals_forecasted_planned_by_month.total_planned_deals]
    listen:
      Plan: plans.name
    row: 54
    col: 18
    width: 4
    height: 6
  - title: QTD Planned Deals
    name: QTD Planned Deals
    model: forecasts
    explore: actuals_forecasted_planned_by_month
    type: single_value
    fields: [actuals_forecasted_planned_by_month.total_planned_deals]
    filters:
      closed.date_day_month: 1 quarters
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: Planned
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#7b8482",
        font_color: "#f5f7ed", color_application: {collection_id: upequity, palette_id: upequity-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
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
    defaults_version: 1
    series_types: {}
    listen:
      Plan: plans.name
    row: 54
    col: 10
    width: 4
    height: 6
  - name: " (4)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: ''
    row: 60
    col: 0
    width: 24
    height: 4
  filters:
  - name: Plan
    title: Plan
    type: field_filter
    default_value: Current
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
      options: []
    model: forecasts
    explore: actuals_forecasted_planned_by_month
    listens_to_filters: []
    field: plans.name
