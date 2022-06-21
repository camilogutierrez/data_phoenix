view: lk_caso_hito_estado {
  sql_table_name: @{gcp_ambiente}.LK_CasoHitoEstado` ;;
  fields_hidden_by_default: yes

  dimension: caso_hito_estado_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.CasoHitoEstadoSK ;;
  }

  dimension: caso_hito_estado_nombre {
    type: string
    sql: ${TABLE}.CasoHitoEstadoNombre ;;
  }
}