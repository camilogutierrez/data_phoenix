view: lk_cuenta_estado {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_CuentaEstado` ;;
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
