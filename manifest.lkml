################ Constants ################

constant: CONNECTION_NAME {
  value: "your_connection"
  export: override_required
}

constant: SCHEMA_NAME {
  value: "carbonfootprint"
  export: override_optional
}

constant: TABLE_NAME {
  value:  "carbon_footprint_export"
  export: override_optional
}
