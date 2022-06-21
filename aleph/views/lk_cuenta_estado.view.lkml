view: lk_cuenta_estado {
  sql_table_name: @{gcp_ambiente}.LK_CuentaEstado` ;;
  fields_hidden_by_default: yes

  dimension: cuenta_estado_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.CuentaEstadoSK ;;
  }

  dimension: cuenta_estado_nombre {
    type: string
    sql: ${TABLE}.CuentaEstadoNombre ;;
  }
}