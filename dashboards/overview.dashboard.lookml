- dashboard: gcp_carbon_overview_udd
  title: GCP Carbon Overview
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  elements:
  - name: 0 kgCO₂e net emissions
    type: text
    title_text: 0 kgCO₂e net emissions
    subtitle_text: ''
    body_text: Google invests in enough renewable energy and carbon offsets to neutralize
      the global operational greenhouse gas emissions of Google Cloud. The emissions
      that are neutralized include Google Cloud’s scope 1, scope 2, and the scope
      3 categories listed in the annual assurance of environmental indicators. This
      does not represent Google Cloud’s Scope 2 market-based emissions. [Learn More](https://sustainability.google/commitments/)
    row: 0
    col: 11
    width: 9
    height: 4
  - title: Gross emissions
    name: Gross emissions
    model: gcp_carbon
    explore: carbon
    type: single_value
    fields: [carbon.total_carbon_emissions_kgco2e]
    filters: {}
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
    single_value_title: ''
    value_format: 0.0 "kgCO₂e"
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: The emissions that are currently apportioned to customers are the lifecycle
      emissions from Google Cloud’s electricity consumption. These emissions are considered
      a customer’s scope 3 emissions, under the Greenhouse Gas Protocol.
    listen:
      Usage Month: carbon.usage_month
    row: 0
    col: 0
    width: 11
    height: 4
  - title: Emissions by Project
    name: Emissions by Project
    model: gcp_carbon
    explore: carbon
    type: looker_bar
    fields: [carbon.total_carbon_emissions_kgco2e, carbon.project_id]
    sorts: [carbon.total_carbon_emissions_kgco2e desc]
    limit: 25
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
    series_types: {}
    series_colors:
      carbon.total_carbon_emissions_kgco2e: "#4285f4"
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: Past 12 month gross carbon footprint
    value_format: '#.# "kgCO2e"'
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Usage Month: carbon.usage_month
    row: 4
    col: 12
    width: 12
    height: 7
  - title: Emissions by Month
    name: Emissions by Month
    model: gcp_carbon
    explore: carbon
    type: looker_column
    fields: [carbon.total_carbon_emissions_kgco2e, carbon.usage_month]
    fill_fields: [carbon.usage_month]
    sorts: [carbon.usage_month desc]
    limit: 500
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
    series_types: {}
    series_colors:
      carbon.total_carbon_emissions_kgco2e: "#4285f4"
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: Past 12 month gross carbon footprint
    value_format: '#.# "kgCO2e"'
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Usage Month: carbon.usage_month
    row: 4
    col: 0
    width: 12
    height: 7
  - title: Emissions by Region
    name: Emissions by Region
    model: gcp_carbon
    explore: carbon
    type: looker_bar
    fields: [carbon.total_carbon_emissions_kgco2e, carbon.region]
    sorts: [carbon.total_carbon_emissions_kgco2e desc]
    limit: 25
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
    series_types: {}
    series_colors:
      carbon.total_carbon_emissions_kgco2e: "#4285f4"
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: Past 12 month gross carbon footprint
    value_format: '#.# "kgCO2e"'
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Usage Month: carbon.usage_month
    row: 11
    col: 12
    width: 12
    height: 7
  - title: Emissions by Service
    name: Emissions by Service
    model: gcp_carbon
    explore: carbon
    type: looker_bar
    fields: [carbon.total_carbon_emissions_kgco2e, carbon.service_name]
    sorts: [carbon.total_carbon_emissions_kgco2e desc]
    limit: 25
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
    series_types: {}
    series_colors:
      carbon.total_carbon_emissions_kgco2e: "#4285f4"
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: Past 12 month gross carbon footprint
    value_format: '#.# "kgCO2e"'
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Usage Month: carbon.usage_month
    row: 11
    col: 0
    width: 12
    height: 7
  - title: Most recent month available
    name: Most recent month available
    model: gcp_carbon
    explore: carbon
    type: single_value
    fields: [carbon.latest_month]
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
    custom_color: "#999"
    single_value_title: ''
    value_format: ''
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 0
    col: 20
    width: 4
    height: 4
  filters:
  - name: Usage Month
    title: Usage Month
    type: field_filter
    default_value: 12 month ago for 12 month
    allow_multiple_values: true
    required: true
    ui_config:
      type: advanced
      display: popover
      options: []
    model: gcp_carbon
    explore: carbon
    listens_to_filters: []
    field: carbon.usage_month
