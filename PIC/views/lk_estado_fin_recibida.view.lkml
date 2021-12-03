view: lk_estado_fin_recibida {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_EstadoFinRecibida`;;
  fields_hidden_by_default: yes

  dimension: estado_fin_recibidanombre {
    type: string
    sql: ${TABLE}.ESTADO_FIN_RECIBIDANombre ;;
  }

  dimension: estado_fin_recibidasrcid {
    type: number
    value_format_name: id
    sql: ${TABLE}.ESTADO_FIN_RECIBIDASRCId ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
