view: lk_estado_fin_atendida {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_EstadoFinAtendida`;;
  fields_hidden_by_default: yes

  dimension: estado_fin_atendidanombre {
    type: string
    sql: ${TABLE}.ESTADO_FIN_ATENDIDANombre ;;
  }

  dimension: estado_fin_atendidasrcid {
    type: number
    value_format_name: id
    sql: ${TABLE}.ESTADO_FIN_ATENDIDASRCId ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
