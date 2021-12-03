view: lk_llamada_corta {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_LlamadaCorta`;;
  fields_hidden_by_default: yes

  dimension: llamada_cortanombre {
    type: string
    sql: ${TABLE}.LLAMADA_CORTANombre ;;
  }

  dimension: llamada_cortasrcid {
    type: number
    value_format_name: id
    sql: ${TABLE}.LLAMADA_CORTASRCId ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
