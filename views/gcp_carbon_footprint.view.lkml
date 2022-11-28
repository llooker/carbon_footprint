view: gcp_carbon_footprint {

  sql_table_name: @{SCHEMA_NAME}.@{TABLE_NAME} ;;

  dimension: primary_key {
    type: string
    primary_key: yes
    hidden: yes
    sql: CONCAT(${usage_month}, ${billing_account_id}, ${project_number}, ${location}, ${service_id}) ;;
  }

  dimension: carbon_model_version {
    type: number
    hidden: yes
    description: "Version of carbon model that produced this output."
    sql: ${TABLE}.carbon_model_version ;;
  }

  dimension_group: usage {
    type: time
    description: "Month during which this usage occurred."
    timeframes: [raw, month, quarter,year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.usage_month ;;
  }

  dimension: billing_account_id {
    type: string
    description: "Billing account ID for this usage."
    sql: ${TABLE}.billing_account_id ;;
  }

  dimension: project_id {
    type: string
    description: "Project ID for this usage."
    sql: ${TABLE}.project.id ;;
  }

  dimension: project_number {
    type: string
    description: "Project number for this usage."
    sql: ${TABLE}.project.number ;;
  }

  dimension: location {
    type: string
    description: "Cloud location for this usage."
    sql: ${TABLE}.location.location ;;
  }

  dimension: region {
    type: string
    description: "Cloud region for this usage. NULL if usage is multi-regional or global."
    sql: ${TABLE}.location.region ;;
  }

  dimension: service_id {
    type: string
    description: "Cloud Billing service ID for the service."
    sql: ${TABLE}.service.id ;;
  }

  dimension: service_description {
    type: string
    description: "Display name for this service."
    sql: ${TABLE}.service.description ;;
  }

  dimension: carbon_footprint_kgco2e_scope1 {
    type: number
    hidden: yes # Use measure
    description: "Scope 1 carbon footprint for the account, project, service, location, and month in kg
    of CO2 equivalent."
    sql: ${TABLE}.carbon_footprint_kgCO2e.scope1 ;;
  }

  dimension: carbon_footprint_kgco2e_scope2_location_based {
    type: number
    hidden: yes # Use measure
    description: "Scope 2 location-based carbon footprint for the account, project, service,
    location, and month in kg of CO2 equivalent."
    sql: ${TABLE}.carbon_footprint_kgCO2e.scope2.location_based ;;
  }

  dimension: carbon_footprint_kgco2e_scope2_market_based {
    type: number
    hidden: yes # Use measure
    description: "Scope 2 market-based carbon footprint for the account, project, service,
    location, and month in kg of CO2 equivalent."
    sql: ${TABLE}.carbon_footprint_kgCO2e.scope2.market_based ;;
  }

  dimension: carbon_footprint_kgco2e_scope3 {
    type: number
    hidden: yes # Use measure
    description: "Scope 3 carbon footprint for the account, project, service, location, and month in kg
    of CO2 equivalent."
    sql: ${TABLE}.carbon_footprint_kgCO2e.scope3 ;;
  }

  dimension: carbon_footprint_total_kgco2e_after_offsets {
    type: number
    hidden: yes # Use measure
    description: "Total carbon footprint for the account, project, service, location, and month in kg of
    CO2 equivalent. Equivalent to scope 1 + scope 2 market-based + scope 3 - carbon
    offsets."
    sql: ${TABLE}.carbon_footprint_total_kgCO2e.after_offsets ;;
  }

  dimension: carbon_footprint_total_kgco2e_location_based {
    type: number
    hidden: yes # Use measure
    description: "Total carbon footprint for the account, project, service, location, and month in kg of
    CO2 equivalent. Equivalent to scope 1 + scope 2 location-based + scope 3."
    sql: ${TABLE}.carbon_footprint_total_kgCO2e.location_based ;;
  }

  dimension: carbon_footprint_total_kgco2e_market_based {
    type: number
    hidden: yes # Use measure
    description: "Total carbon footprint for the account, project, service, location, and month in kg of
    CO2 equivalent. Equivalent to scope 1 + scope 2 market-based + scope 3."
    sql: ${TABLE}.carbon_footprint_total_kgCO2e.market_based ;;
  }

  dimension: carbon_offsets_kgco2e {
    type: number
    hidden: yes # Use measure
    description: "Total carbon offsets for the account, project, service, location, and month in kg of CO2
    equivalent."
    sql: ${TABLE}.carbon_offsets_kgCO2e ;;
  }

  measure: scope1_carbon_footprint {
    label: "Scope 1"
    description: "Scope 1 carbon footprint in kgCO2e"
    type: sum
    sql: ${carbon_footprint_kgco2e_scope1}/1000 ;;
  }

  measure: scope2_carbon_footprint_location_based {
    label: "Scope 2 (location based)"
    description: "Scope 2 (location based) carbon footprint in kgCO2e"
    type: sum
    sql: ${carbon_footprint_kgco2e_scope2_location_based}/1000 ;;
  }

  measure: scope2_carbon_footprint_market_based {
    label: "Scope 2 (market based)"
    description: "Scope 2 (market based) carbon footprint in kgCO2e"
    type: sum
    sql: ${carbon_footprint_kgco2e_scope2_market_based}/1000 ;;
  }

  measure: scope3_carbon_footprint {
    label: "Scope 3"
    description: "Scope 3 carbon footprint in kgCO2e"
    type: sum
    sql: ${carbon_footprint_kgco2e_scope3}/1000 ;;
  }

  measure: total_carbon_footprint_after_offsets {
    label: "Total carbon footprint (after offsets)"
    description: "Total carbon footprint in kgCO2e (after offsets)"
    type: sum
    sql: ${carbon_footprint_total_kgco2e_after_offsets}/1000 ;;
  }

  measure: total_carbon_footprint_location_based {
    label: "Total carbon footprint (location based)"
    description: "Total carbon footprint in kgCO2e (location based)"
    type: sum
    sql: ${carbon_footprint_total_kgco2e_location_based}/1000 ;;
  }

  measure: total_carbon_footprint_market_based {
    label: "Total carbon footprint (market based)"
    description: "Total carbon footprint in kgCO2e (market based)"
    type: sum
    sql: ${carbon_footprint_total_kgco2e_market_based}/1000 ;;
  }

  measure: carbon_offsets {
    label: "Carbon offsets"
    description: "Carbon offsets in kgCO2e"
    type: sum
    sql: ${carbon_offsets_kgco2e}/1000 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

}
