view: carbon {
  sql_table_name: @{schema_name}.@{table_name} ;;

  dimension: primary_key {
    type: string
    primary_key: yes
    hidden: yes
    # service id can have a 1:m relationship to service name
    sql: CONCAT(${location}, ${region}, ${service_id}, ${service_name}, ${usage_month}, ${project_number}) ;;
  }

  dimension: project_id {
    type: string
    description: "Project ID for this usage."
    sql: ${TABLE}.project.id ;;
    group_label: "Project"
    group_item_label: "ID"

    link: {
      label: "Review Project Details."
      url: "https://console.cloud.google.com/home/dashboard?project={{value}}"
      icon_url: "https://upload.wikimedia.org/wikipedia/commons/6/6d/Google_Cloud_Console_logo.png"
    }
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
    link: {
      label: "Review Billing Details."
      url: "https://console.cloud.google.com/billing/{{value}}"
      icon_url: "https://upload.wikimedia.org/wikipedia/commons/6/6d/Google_Cloud_Console_logo.png"
    }
  }

  dimension_group: usage {
    type: time
    datatype: date
    description: "Month during which this usage occurred."
    timeframes: [
      raw,
      month,
      month_name,
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

  measure: net_carbon_emissions_kgco2e {
    label: "Net Carbon Emissions (kg CO₂e)"
    description: "Google invests in enough renewable energy and carbon offsets to neutralize the global operational greenhouse gas emissions of Google Cloud. The emissions that are neutralized include Google Cloud’s scope 1, scope 2, and the scope 3 categories listed in the annual assurance of environmental indicators. This does not represent Google Cloud’s Scope 2 market-based emissions."
    type: sum
    value_format_name: decimal_1
    sql: 0.00 ;;
    drill_fields: [detail*]

    link: {
      label: "Learn More."
      url: "https://sustainability.google/commitments/"
      icon_url: "https://fonts.gstatic.com/s/i/googlematerialicons/sustainability/v18/gm_grey-24dp/1x/gm_sustainability_gm_grey_24dp.png"
    }
  }

  measure: total_carbon_emissions_kgco2e {
    label: "Total Carbon Emissions (kg CO₂e)"
    description: "Sum of the carbon emissions from electricity associated with the usage of Covered GCP Services, in kg of CO₂ equivalent"
    type: sum
    value_format_name: decimal_1
    sql: ${carbon_emissions_kgco2e} ;;
    drill_fields: [detail*]
  }

  measure: average_carbon_emissions_kgco2e {
    label: "Average Carbon Emissions (kg CO₂e)"
    description: "Average of the carbon emissions from electricity associated with the usage of Covered GCP Services, in kg of CO₂ equivalent"
    type: average
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
