view: lk_stop_action {
  sql_table_name: @{gcp_dataset_pub}.LK_StopAction`;;
  fields_hidden_by_default: yes

  dimension: stop_actionnombre {
    type: string
    sql: ${TABLE}.STOP_ACTIONNombre ;;
  }

  dimension: stop_actionsrcid {
    type: number
    value_format_name: id
    sql: ${TABLE}.STOP_ACTIONSRCId ;;
  }
}
