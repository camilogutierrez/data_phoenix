view: lk_caso_sub_estado {
  sql_table_name: @{gcp_ambiente}.LK_CasoSubEstado` ;;
  fields_hidden_by_default: yes

  dimension: caso_sub_estado_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.CasoSubEstadoSK ;;
  }

  dimension: caso_sub_estado_nombre {
    type: string
    sql: ${TABLE}.CasoSubEstadoNombre ;;
  }
}