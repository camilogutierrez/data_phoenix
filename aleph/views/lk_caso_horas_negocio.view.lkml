view: lk_caso_horas_negocio {
  sql_table_name: @{gcp_ambiente}.LK_CasoHorasNegocio` ;;
  fields_hidden_by_default: yes

  dimension: caso_horas_negocio_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.CasoHorasNegocioSK ;;
  }

  dimension: caso_horas_negocio_nombre {
    type: string
    sql: ${TABLE}.CasoHorasNegocioNombre ;;
  }
}