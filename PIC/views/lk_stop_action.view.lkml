view: lk_stop_action {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_StopAction`;;
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

  measure: count {
    type: count
    drill_fields: []
  }
}
