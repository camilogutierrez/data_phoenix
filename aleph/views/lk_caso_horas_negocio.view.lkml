view: lk_caso_horas_negocio {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_CasoHorasNegocio`;;
  fields_hidden_by_default: yes

  dimension: caso_horas_negocio_nombre {
    type: string
    sql: ${TABLE}.CasoHorasNegocioNombre ;;
  }

  dimension: caso_horas_negocio_sk {
    type: number
    sql: ${TABLE}.CasoHorasNegocioSK ;;
  }
}
