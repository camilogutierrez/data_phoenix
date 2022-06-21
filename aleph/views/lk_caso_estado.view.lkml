view: lk_caso_estado {
  sql_table_name: @{gcp_ambiente}.LK_CasoEstado` ;;
  fields_hidden_by_default: yes

  dimension: caso_estado_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.CasoEstadoSK ;;
  }

  dimension: caso_estado_nombre {
    type: string
    sql: ${TABLE}.CasoEstadoNombre ;;
  }
}