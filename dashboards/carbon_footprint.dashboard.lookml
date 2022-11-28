- dashboard: carbon_footprint
  title: Carbon Footprint
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  elements:
  - title: Gross emissions annual
    name: Gross emissions annual
    model: gcp_carbon
    explore: carbon
    type: single_value
    fields: [carbon.total_carbon_emissions_kgco2e]
    filters:
      carbon.usage_year: 1 years
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
    row: 5
    col: 18
    width: 6
    height: 5
  - title: Gross carbon emissions by project
    name: Gross carbon emissions by project
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
    show_value_labels: true
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
    row: 17
    col: 12
    width: 12
    height: 7
  - title: Gross monthly carbon emissions
    name: Gross monthly carbon emissions
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
    row: 10
    col: 0
    width: 12
    height: 7
  - title: Gross carbon emissions by region
    name: Gross carbon emissions by region
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
    row: 10
    col: 12
    width: 12
    height: 7
  - title: Gross carbon emissions by service
    name: Gross carbon emissions by service
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
    show_value_labels: true
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
    row: 17
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
    row: 5
    col: 7
    width: 4
    height: 5
  - title: Gross carbon footprint in most recent available month
    name: Gross carbon footprint in most recent available month
    model: gcp_carbon
    explore: carbon
    type: single_value
    fields: [carbon.total_carbon_emissions_kgco2e, carbon.usage_month]
    fill_fields: [carbon.usage_month]
    filters:
      carbon.usage_month: 3 months ago for 2 months
    sorts: [carbon.usage_month desc]
    limit: 500
    dynamic_fields: [{category: table_calculation, label: Percent Change, value_format: !!null '',
        value_format_name: percent_2, calculation_type: percent_difference_from_previous,
        table_calculation: percent_change, args: [carbon.total_carbon_emissions_kgco2e],
        _kind_hint: measure, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: ''
    value_format: 0.0 "kgCO₂e"
    comparison_label: from prior month
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: The emissions that are currently apportioned to customers are the lifecycle
      emissions from Google Cloud’s electricity consumption. These emissions are considered
      a customer’s scope 3 emissions, under the Greenhouse Gas Protocol.
    listen: {}
    row: 5
    col: 11
    width: 7
    height: 5
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<header style=\"margin-top: 5px;background-color: #fff; color: #5f6368;\
      \ font-family: Google Sans,Noto Sans,Noto Sans JP,Noto Sans KR,Noto Naskh Arabic,Noto\
      \ Sans Thai,Noto Sans Hebrew,Noto Sans Bengali,sans-serif; padding: 8px;font-size:25px\"\
      >\n\n<img src=\"https://fonts.gstatic.com/s/i/googlematerialicons/sustainability/v18/gm_grey-24dp/1x/gm_sustainability_gm_grey_24dp.png\"\
      /> Carbon Footprint Reporting \n\n</header>\n\n<p style=\"margin-top: 5px;background-color:\
      \ #fff; color: #5f6368; font-family: Google Sans,Noto Sans,Noto Sans JP,Noto\
      \ Sans KR,Noto Naskh Arabic,Noto Sans Thai,Noto Sans Hebrew,Noto Sans Bengali,sans-serif;\
      \ padding: 8px;\">\n\nTo give customers a report tailored to their specific\
      \ carbon footprint, Google looks at the gross carbon emissions produced by the\
      \ computing infrastructure supporting its internal services. Google apportions\
      \ those gross emissions to each Google Cloud product, and allocates the emissions\
      \ to a customer based on the customer's usage of those Google Cloud products.\n\
      <a href=\"https://cloud.google.com/carbon-footprint/docs/methodology\" /> Learn\
      \ More. \n\n</p>\n"
    row: 0
    col: 2
    width: 19
    height: 5
  - title: Monthly gross carbon emissions by project (3 available months)
    name: Monthly gross carbon emissions by project (3 available months)
    model: gcp_carbon
    explore: carbon
    type: looker_donut_multiples
    fields: [carbon.total_carbon_emissions_kgco2e, carbon.usage_month, carbon.project_id]
    pivots: [carbon.project_id]
    fill_fields: [carbon.usage_month]
    filters:
      carbon.usage_month: 4 months ago for 3 months
    sorts: [carbon.usage_month desc, carbon.project_id]
    limit: 500
    show_value_labels: false
    font_size: 12
    hide_legend: true
    series_colors:
      carbon.total_carbon_emissions_kgco2e: "#4285f4"
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
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: monotone
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
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
    listen: {}
    row: 24
    col: 12
    width: 12
    height: 7
  - title: Predicted gross monthly carbon emissions
    name: Predicted gross monthly carbon emissions
    model: gcp_carbon
    explore: carbon
    type: looker_line
    fields: [carbon.total_carbon_emissions_kgco2e, carbon.usage_month]
    fill_fields: [carbon.usage_month]
    sorts: [carbon.usage_month desc]
    limit: 500
    analysis_config:
      forecasting:
      - confidence_interval: 0.95
        field_name: carbon.total_carbon_emissions_kgco2e
        forecast_n: 12
        forecast_interval: month
        seasonality:
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
    series_types: {}
    series_colors:
      carbon.total_carbon_emissions_kgco2e: "#4285f4"
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
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
    listen: {}
    row: 35
    col: 0
    width: 24
    height: 6
  - title: Monthly gross carbon emissions by service (3 available months)
    name: Monthly gross carbon emissions by service (3 available months)
    model: gcp_carbon
    explore: carbon
    type: looker_donut_multiples
    fields: [carbon.total_carbon_emissions_kgco2e, carbon.service_name, carbon.usage_month]
    pivots: [carbon.service_name]
    fill_fields: [carbon.usage_month]
    filters:
      carbon.usage_month: 4 months ago for 3 months
    sorts: [carbon.total_carbon_emissions_kgco2e desc 0, carbon.usage_month, carbon.service_name]
    limit: 500
    show_value_labels: false
    font_size: 12
    hide_legend: true
    series_colors:
      carbon.total_carbon_emissions_kgco2e: "#4285f4"
    value_labels: labels
    label_type: lab
    inner_radius: 60
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
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
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
    listen: {}
    row: 24
    col: 0
    width: 12
    height: 7
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<header style=\"margin-top: 5px;background-color: #fff; color: #5f6368;\
      \ font-family: Google Sans,Noto Sans,Noto Sans JP,Noto Sans KR,Noto Naskh Arabic,Noto\
      \ Sans Thai,Noto Sans Hebrew,Noto Sans Bengali,sans-serif; padding: 8px;font-size:25px\"\
      >\n\nForecasting <img src=\"https://fonts.gstatic.com/s/i/googlematerialicons/trending_up/v18/gm_grey-24dp/1x/gm_trending_up_gm_grey_24dp.png\"\
      />\n\n</header>\n\n<p style=\"margin-top: 5px;background-color: #fff; color:\
      \ #5f6368; font-family: Google Sans,Noto Sans,Noto Sans JP,Noto Sans KR,Noto\
      \ Naskh Arabic,Noto Sans Thai,Noto Sans Hebrew,Noto Sans Bengali,sans-serif;\
      \ padding: 8px;\">Forecasting leverages an AutoRegressive Integrated Moving\
      \ Average (ARIMA) algorithm to create an equation that best matches the data\
      \ that is input into a forecast. To find the best match for the data, Looker\
      \ runs ARIMA with a set of initial variables, creates a list of variations of\
      \ the initial variables, and runs ARIMA again with those variations. If any\
      \ of the variations create an equation that better fits the input data, Looker\
      \ uses those variations as the new initial variables and creates additional\
      \ variations that are then evaluated. Looker continues to repeat this process\
      \ until the best variables are identified, or until all the options or allocated\
      \ compute time are exhausted.<a href=\"https://docs.looker.com/exploring-data/visualizing-query-results/forecasting-in-visualizations#autoregressive_integrated_moving_average_(arima)_algorithm\"\
      \ /> Learn More. </p> \n\n"
    row: 31
    col: 2
    width: 20
    height: 4
  - title: Predicted gross carbon emissions by service
    name: Predicted gross carbon emissions by service
    model: gcp_carbon
    explore: carbon
    type: looker_line
    fields: [carbon.total_carbon_emissions_kgco2e, carbon.usage_month, carbon.service_name]
    pivots: [carbon.service_name]
    fill_fields: [carbon.usage_month]
    sorts: [carbon.usage_month desc, carbon.service_name]
    limit: 500
    analysis_config:
      forecasting:
      - confidence_interval: 0.95
        field_name: carbon.total_carbon_emissions_kgco2e
        forecast_n: 12
        forecast_interval: month
        seasonality:
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
    series_types: {}
    series_colors:
      carbon.total_carbon_emissions_kgco2e: "#4285f4"
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
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
    listen: {}
    row: 41
    col: 0
    width: 12
    height: 6
  - title: Predicted gross carbon emissions by project
    name: Predicted gross carbon emissions by project
    model: gcp_carbon
    explore: carbon
    type: looker_line
    fields: [carbon.total_carbon_emissions_kgco2e, carbon.usage_month, carbon.project_id]
    pivots: [carbon.project_id]
    fill_fields: [carbon.usage_month]
    sorts: [carbon.usage_month desc, carbon.project_id]
    limit: 500
    analysis_config:
      forecasting:
      - confidence_interval: 0.95
        field_name: carbon.total_carbon_emissions_kgco2e
        forecast_n: 12
        forecast_interval: month
        seasonality:
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
    series_types: {}
    series_colors:
      carbon.total_carbon_emissions_kgco2e: "#4285f4"
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
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
    listen: {}
    row: 41
    col: 12
    width: 12
    height: 6
  - title: Associated Billing Account
    name: Associated Billing Account
    model: gcp_carbon
    explore: carbon
    type: single_value
    fields: [carbon.billing_account_id]
    sorts: [carbon.billing_account_id]
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
    row: 5
    col: 0
    width: 7
    height: 5
  - name: " (3)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<header style=\"margin-top: 5px;background-color: #fff; color: #5f6368;\
      \ font-family: Google Sans,Noto Sans,Noto Sans JP,Noto Sans KR,Noto Naskh Arabic,Noto\
      \ Sans Thai,Noto Sans Hebrew,Noto Sans Bengali,sans-serif; padding: 8px;font-size:25px\"\
      >\n\n<img src=\"https://fonts.gstatic.com/s/i/googlematerialicons/sustainability/v18/gm_grey-24dp/1x/gm_sustainability_gm_grey_24dp.png\"\
      /> Make an Impact\n\n</header>\n\n<p style=\"margin-top: 5px;background-color:\
      \ #fff; color: #5f6368; font-family: Google Sans,Noto Sans,Noto Sans JP,Noto\
      \ Sans KR,Noto Naskh Arabic,Noto Sans Thai,Noto Sans Hebrew,Noto Sans Bengali,sans-serif;\
      \ padding: 8px;\">\n\nTo lower your carbon emissions, you need to reduce the\
      \ electricity consumption of your cloud workloads from carbon-based sources.\
      \ To lower your carbon emissions, we have several recommended strategies.\n\n\
      <a href=\"https://cloud.google.com/architecture/reduce-carbon-footprint\" />\
      \ Learn more about how to reduce your Google Cloud carbon footprint here. </p>\
      \ \n\n"
    row: 47
    col: 2
    width: 20
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
