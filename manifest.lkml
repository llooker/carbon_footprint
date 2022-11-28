################ Constants ################

constant: CONNECTION_NAME {
  value: "bq-carbon_footprint_psoeng-looker"
  export: override_required
}

constant: SCHEMA_NAME {
  value: "carbon_footprint_psoeng"
  export: override_optional
}

constant: TABLE_NAME {
  value:  "carbon_footprint"
  export: override_optional
}
