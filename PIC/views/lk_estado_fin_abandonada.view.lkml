view: lk_estado_fin_abandonada {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_EstadoFinAbandonada`;;
  fields_hidden_by_default: yes

  dimension: estado_fin_abandonadanombre {
    type: string
    sql: ${TABLE}.ESTADO_FIN_ABANDONADANombre ;;
  }

  dimension: estado_fin_abandonadasrcid {
    type: number
    value_format_name: id
    sql: ${TABLE}.ESTADO_FIN_ABANDONADASRCId ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
