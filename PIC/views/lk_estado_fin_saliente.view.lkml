view: lk_estado_fin_saliente {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_EstadoFinSaliente`;;
  fields_hidden_by_default: yes

  dimension: estado_fin_salientenombre {
    type: string
    sql: ${TABLE}.ESTADO_FIN_SALIENTENombre ;;
  }

  dimension: estado_fin_salientesrcid {
    type: number
    value_format_name: id
    sql: ${TABLE}.ESTADO_FIN_SALIENTESRCId ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
