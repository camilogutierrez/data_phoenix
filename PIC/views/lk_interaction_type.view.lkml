view: lk_interaction_type {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_InteractionType`;;
  fields_hidden_by_default: yes

  dimension: interaction_typesrcid {
    type: string
    sql: ${TABLE}.INTERACTION_TYPESRCId ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
