view: lk_interaction_type {
  sql_table_name: @{gcp_ambiente}.LK_InteractionType`;;
  fields_hidden_by_default: yes

  dimension: interaction_typesrcid {
    primary_key: yes
    type: string
    sql: ${TABLE}.INTERACTION_TYPESRCId ;;
  }
}