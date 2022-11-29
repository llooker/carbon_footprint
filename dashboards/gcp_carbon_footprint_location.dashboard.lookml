- dashboard: gcp_carbon_footprint_location_based
  title: GCP Carbon Footprint (location based)
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  query_timezone: user_timezone
  preferred_slug: oXFJX1R6XZGUPKF72qurkX
  elements:
  - title: Billing Account ID
    name: Billing Account ID
    model: gcp_carbon_footprint
    explore: gcp_carbon_footprint
    type: single_value
    fields: [gcp_carbon_footprint.billing_account_id]
    sorts: [gcp_carbon_footprint.billing_account_id]
    limit: 1
    query_timezone: Asia/Kolkata
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Billing Account ID
    series_types: {}
    defaults_version: 1
    listen:
      Usage Month: gcp_carbon_footprint.usage_month
    row: 0
    col: 0
    width: 12
    height: 4
  - title: Total CF Location Based
    name: Total CF Location Based
    model: gcp_carbon_footprint
    explore: gcp_carbon_footprint
    type: single_value
    fields: [gcp_carbon_footprint.total_carbon_footprint_location_based]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: total_location_round,
        value_format: !!null '', value_format_name: decimal_0, based_on: gcp_carbon_footprint.total_carbon_footprint_location_based,
        _kind_hint: measure, measure: total_location_round, type: sum, _type_hint: number},
      {category: table_calculation, expression: "${gcp_carbon_footprint.total_carbon_footprint_location_based}\
          \ / 1000", label: total_cf_location_round, value_format: "#,##0", value_format_name: __custom,
        _kind_hint: measure, table_calculation: total_cf_location_round, _type_hint: number,
        is_disabled: true}]
    query_timezone: Asia/Kolkata
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Carbon footprint (total)
    value_format: '#,##0 "tCO₂e"'
    series_types: {}
    defaults_version: 1
    hidden_fields:
    listen:
      Usage Month: gcp_carbon_footprint.usage_month
    row: 0
    col: 12
    width: 6
    height: 4
  - title: Monthly carbon footprint by scope
    name: Monthly carbon footprint by scope
    model: gcp_carbon_footprint
    explore: gcp_carbon_footprint
    type: looker_column
    fields: [gcp_carbon_footprint.usage_month, gcp_carbon_footprint.scope1_carbon_footprint,
      gcp_carbon_footprint.scope2_carbon_footprint_location_based, gcp_carbon_footprint.scope3_carbon_footprint]
    fill_fields: [gcp_carbon_footprint.usage_month]
    filters: {}
    sorts: [gcp_carbon_footprint.usage_month desc]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: total_location_round,
        value_format: !!null '', value_format_name: decimal_0, based_on: gcp_carbon_footprint.total_carbon_footprint_location_based,
        _kind_hint: measure, measure: total_location_round, type: sum, _type_hint: number}]
    query_timezone: Asia/Kolkata
    x_axis_gridlines: false
    y_axis_gridlines: false
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
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: time
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
        reverse: false
    y_axes: [{label: tCO₂e, orientation: left, series: [{axisId: gcp_carbon_footprint.scope1_carbon_footprint,
            id: gcp_carbon_footprint.scope1_carbon_footprint, name: Scope 1}, {axisId: gcp_carbon_footprint.scope2_carbon_footprint_location_based,
            id: gcp_carbon_footprint.scope2_carbon_footprint_location_based, name: Scope
              2 (location based)}, {axisId: gcp_carbon_footprint.scope3_carbon_footprint,
            id: gcp_carbon_footprint.scope3_carbon_footprint, name: Scope 3}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: log}]
    x_axis_label: ''
    label_value_format: "#,##0.0"
    series_types: {}
    series_colors: {}
    column_spacing_ratio: 0.5
    column_group_spacing_ratio: 0
    show_null_points: true
    interpolation: monotone
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: Total Location based (tCO2e)
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: []
    listen:
      Usage Month: gcp_carbon_footprint.usage_month
    row: 4
    col: 12
    width: 12
    height: 6
  - title: Monthly total carbon footprint
    name: Monthly total carbon footprint
    model: gcp_carbon_footprint
    explore: gcp_carbon_footprint
    type: looker_column
    fields: [gcp_carbon_footprint.usage_month, gcp_carbon_footprint.total_carbon_footprint_location_based]
    filters: {}
    sorts: [gcp_carbon_footprint.usage_month desc]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: total_location_round,
        value_format: !!null '', value_format_name: decimal_0, based_on: gcp_carbon_footprint.total_carbon_footprint_location_based,
        _kind_hint: measure, measure: total_location_round, type: sum, _type_hint: number},
      {category: table_calculation, expression: "${gcp_carbon_footprint.total_carbon_footprint_location_based}\
          \ / 1000", label: total_cf_location_round, value_format: "#,##0", value_format_name: __custom,
        _kind_hint: measure, table_calculation: total_cf_location_round, _type_hint: number,
        is_disabled: true}]
    query_timezone: Asia/Kolkata
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: time
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
        reverse: false
    y_axes: [{label: tCO₂e, orientation: left, series: [{axisId: gcp_carbon_footprint.total_carbon_footprint_location_based,
            id: gcp_carbon_footprint.total_carbon_footprint_location_based, name: Total
              carbon footprint (location based)}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: ''
    label_value_format: "#,##0"
    series_types: {}
    series_colors: {}
    column_spacing_ratio: 0
    column_group_spacing_ratio: 0.4
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: Total Location based (tCO2e)
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: []
    listen:
      Usage Month: gcp_carbon_footprint.usage_month
    row: 4
    col: 0
    width: 12
    height: 6
  - title: Yearly carbon footprint by projects (top 20)
    name: Yearly carbon footprint by projects (top 20)
    model: gcp_carbon_footprint
    explore: gcp_carbon_footprint
    type: looker_bar
    fields: [gcp_carbon_footprint.project_id, gcp_carbon_footprint.total_carbon_footprint_location_based]
    sorts: [gcp_carbon_footprint.total_carbon_footprint_location_based desc 0]
    limit: 20
    dynamic_fields: [{category: measure, expression: "${gcp_carbon_footprint.usage_month}\
          \ = add_months(-12, ${gcp_carbon_footprint.usage_month})", label: Prev Year,
        value_format: 0.##, value_format_name: __custom, based_on: gcp_carbon_footprint.scope2_carbon_footprint_location_based,
        filter_expression: "${gcp_carbon_footprint.usage_month} = add_months(-12,\
          \ ${gcp_carbon_footprint.usage_month})", _kind_hint: measure, measure: prev_year,
        type: sum, _type_hint: number}]
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: tCO₂e, orientation: bottom, series: [{axisId: gcp_carbon_footprint.total_carbon_footprint_location_based,
            id: gcp_carbon_footprint.total_carbon_footprint_location_based, name: Total
              carbon footprint (location based)}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Usage Month: gcp_carbon_footprint.usage_month
    row: 10
    col: 0
    width: 7
    height: 6
  - title: Monthly Carbon Footprint
    name: Monthly Carbon Footprint
    model: gcp_carbon_footprint
    explore: gcp_carbon_footprint
    type: single_value
    fields: [gcp_carbon_footprint.usage_month, gcp_carbon_footprint.total_carbon_footprint_location_based]
    sorts: [gcp_carbon_footprint.usage_month desc]
    limit: 2
    dynamic_fields: [{category: table_calculation, label: change_prev_month, value_format: !!null '',
        value_format_name: percent_2, calculation_type: percent_difference_from_previous,
        table_calculation: change_prev_month, args: [gcp_carbon_footprint.total_carbon_footprint_location_based],
        _kind_hint: measure, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Carbon footprint (last month)
    value_format: '#,##0.0 "tCO₂e"'
    comparison_label: from prior month
    series_types: {}
    defaults_version: 1
    listen:
      Usage Month: gcp_carbon_footprint.usage_month
    row: 0
    col: 18
    width: 6
    height: 4
  - title: Yearly carbon footprint  by service
    name: Yearly carbon footprint  by service
    model: gcp_carbon_footprint
    explore: gcp_carbon_footprint
    type: looker_grid
    fields: [gcp_carbon_footprint.service_description, gcp_carbon_footprint.total_carbon_footprint_location_based]
    filters:
      gcp_carbon_footprint.total_carbon_footprint_location_based: ">=1.0"
    sorts: [gcp_carbon_footprint.total_carbon_footprint_location_based desc 0]
    limit: 100
    show_view_names: false
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
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      gcp_carbon_footprint.total_carbon_footprint_location_based: Location based carbon
        footprint (tCO₂e)
      gcp_carbon_footprint.service_description: GCP Service
    series_cell_visualizations:
      gcp_carbon_footprint.total_carbon_footprint_location_based:
        is_active: true
    series_value_format:
      gcp_carbon_footprint.total_carbon_footprint_location_based: "#,##0.0"
    defaults_version: 1
    listen:
      Usage Month: gcp_carbon_footprint.usage_month
    row: 10
    col: 14
    width: 10
    height: 6
  - title: Yearly carbon footprint  by location
    name: Yearly carbon footprint  by location
    model: gcp_carbon_footprint
    explore: gcp_carbon_footprint
    type: looker_pie
    fields: [gcp_carbon_footprint.total_carbon_footprint_location_based, gcp_carbon_footprint.region]
    sorts: [gcp_carbon_footprint.total_carbon_footprint_location_based desc 0]
    limit: 500
    value_labels: legend
    label_type: labPer
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      Usage Month: gcp_carbon_footprint.usage_month
    row: 10
    col: 7
    width: 7
    height: 6
  - title: Predicted gross monthly carbon footprint
    name: Predicted gross monthly carbon footprint
    model: gcp_carbon_footprint
    explore: gcp_carbon_footprint
    type: looker_area
    fields: [gcp_carbon_footprint.usage_month, gcp_carbon_footprint.total_carbon_footprint_location_based]
    fill_fields: [gcp_carbon_footprint.usage_month]
    sorts: [gcp_carbon_footprint.usage_month desc]
    limit: 500
    analysis_config:
      forecasting:
      - confidence_interval: 0.95
        field_name: gcp_carbon_footprint.total_carbon_footprint_location_based
        forecast_n: 6
        forecast_interval: month
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
    interpolation: monotone
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
    y_axes: [{label: tCO₂e, orientation: left, series: [{axisId: gcp_carbon_footprint.total_carbon_footprint_location_based,
            id: gcp_carbon_footprint.total_carbon_footprint_location_based, name: Total
              carbon footprint (location based)}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors: {}
    defaults_version: 1
    listen:
      Usage Month: gcp_carbon_footprint.usage_month
    row: 16
    col: 0
    width: 24
    height: 7
  filters:
  - name: Usage Month
    title: Usage Month
    type: field_filter
    default_value: 12 month ago for 12 month
    allow_multiple_values: false
    required: true
    ui_config:
      type: advanced
      display: popover
      options: []
    model: gcp_carbon_footprint
    explore: gcp_carbon_footprint
    listens_to_filters: []
    field: gcp_carbon_footprint.usage_month
