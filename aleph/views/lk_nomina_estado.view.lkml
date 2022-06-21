view: lk_nomina_estado {
  sql_table_name: @{gcp_ambiente}.LK_NominaEstado` ;;
  fields_hidden_by_default: yes

  dimension: nomina_estado_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.NominaEstadoSK ;;
  }

  dimension: nomina_estado_nombre {
    type: string
    sql: ${TABLE}.NominaEstadoNombre ;;
  }
}