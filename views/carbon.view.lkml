view: carbon {
  sql_table_name: carbon_footprint_export ;;

  dimension: project_id {
    type: string
    description: "Project ID for this usage."
    sql: ${TABLE}.project.id ;;
    group_label: "Project"
    group_item_label: "ID"
  }

  dimension: project_number {
    type: string
    description: "Project number for this usage."
    sql: ${TABLE}.project.number ;;
    group_label: "Project"
    group_item_label: "Number"
  }

  dimension: location {
    type: string
    description: "Cloud location for this usage."
    sql: ${TABLE}.location.location ;;
    group_label: "Location"
    group_item_label: "Location"
  }

  dimension: region {
    type: string
    description: "Cloud region for this usage. NULL if usage is multi-regional or global."
    sql: ${TABLE}.location.region ;;
    group_label: "Location"
    group_item_label: "Region"
  }

  dimension: service_name {
    type: string
    description: "Display name for the service."
    sql: ${TABLE}.service.description ;;
    group_label: "Service"
    group_item_label: "Name"
  }

  dimension: service_id {
    type: string
    description: "Cloud Billing service ID for the service."
    sql: ${TABLE}.service.id ;;
    group_label: "Service"
    group_item_label: "ID"
  }

  dimension: billing_account_id {
    type: string
    description: "Billing account ID for this usage."
    sql: ${TABLE}.billing_account_id ;;
  }

  dimension_group: usage {
    type: time
    datatype: date
    description: "Month during which this usage occurred."
    timeframes: [
      raw,
      month,
      quarter,
      year
    ]
    convert_tz: no
    sql: ${TABLE}.usage_month ;;
  }

  dimension: carbon_model_version {
    hidden: yes
    type: number
    description: "Version of the carbon model that produced this output."
    sql: ${TABLE}.carbon_model_version ;;
  }

  dimension: carbon_emissions_kgco2e {
    hidden: yes # Prefer the measure version of the field
    type: number
    description: "Carbon emissions from electricity associated with the usage of Covered GCP Services, in kg of CO₂ equivalent"
    value_format_name: decimal_2
    sql: ${TABLE}.carbon_footprint_kgCO2e ;;
  }

  measure: count {
    hidden: yes # No clear business meaning for the row, beyond a Google-decided rollup granularity
    type: count
    drill_fields: [detail*]
  }

  measure: total_carbon_emissions_kgco2e {
    label: "Total Carbon Emissions (kg CO₂e)"
    description: "Sum of the carbon emissions from electricity associated with the usage of Covered GCP Services, in kg of CO₂ equivalent"
    type: sum
    value_format_name: decimal_1
    sql: ${carbon_emissions_kgco2e} ;;
    drill_fields: [detail*]
  }

  measure: latest_month {
    type: date_month
    datatype: date
    sql: MAX(${usage_raw}) ;;
  }

  set: detail {
    fields: [
      project_id,
      location,
      service_name,
      usage_month,
      carbon_model_version,
      total_carbon_emissions_kgco2e
    ]
  }
}
