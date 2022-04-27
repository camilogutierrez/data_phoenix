view: lk_caso_resultado_retencion {
  sql_table_name: @{gcp_ambiente}.LK_CasoResultadoRetencion` ;;
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