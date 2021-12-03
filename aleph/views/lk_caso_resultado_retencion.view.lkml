view: lk_caso_resultado_retencion {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_CasoResultadoRetencion` ;;
  fields_hidden_by_default: yes

  dimension: caso_resultado_retencion_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.CasoResultadoRetencionSK ;;
  }

  dimension: caso_resultado_retencion_nombre {
    type: string
    sql: ${TABLE}.CasoResultadoRetencionNombre ;;
  }
}
