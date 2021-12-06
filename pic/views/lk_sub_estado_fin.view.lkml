view: lk_sub_estado_fin {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_SubEstadoFin`;;
  fields_hidden_by_default: yes

  dimension: sub_estado_finnombre {
    type: string
    sql: ${TABLE}.SUB_ESTADO_FINNombre ;;
  }

  dimension: sub_estado_finsrcid {
    type: number
    value_format_name: id
    sql: ${TABLE}.SUB_ESTADO_FINSRCId ;;
  }
}
