view: lk_interaction_type {
  sql_table_name: @{gcp_dataset_pub}.LK_InteractionType`;;
  fields_hidden_by_default: yes

  dimension: interaction_typesrcid {
    type: string
    sql: ${TABLE}.INTERACTION_TYPESRCId ;;
  }
}
